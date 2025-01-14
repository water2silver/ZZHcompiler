/**
 * @file CodeGeneratorArm32.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief ARM32的后端处理源文件
 * @version 0.1
 * @date 2023-09-26
 * @copyright Copyright (c) 2023
 *
 */
#include <cstdint>
#include <cstdio>
#include <vector>

#include "CodeGeneratorArm32.h"
#include "ILocArm32.h"
#include "IRInst.h"
#include "InstSelectorArm32.h"
#include "PlatformArm32.h"
#include "SymbolTable.h"
#include "Value.h"

int CodeGeneratorArm32::globalValueCount = 0;

/// @brief 构造函数
/// @param tab 符号表
CodeGeneratorArm32::CodeGeneratorArm32(SymbolTable & tab) : CodeGeneratorAsm(tab)
{
    for (int k = 0; k < PlatformArm32::maxRegNum; k++) {
        RegVal[k] = new IntRegValue(PlatformArm32::regName[k], k);
        //
        RegVal[k]->regLinerScaner = k;
        RegVal[k]->_isReg = true;
    }
}

/// @brief 析构函数
CodeGeneratorArm32::~CodeGeneratorArm32()
{
    for (int k = 0; k < PlatformArm32::maxRegNum; k++) {
        delete RegVal[k];
        RegVal[k] = nullptr;
    }
}

/// @brief 产生汇编头部分
void CodeGeneratorArm32::genHeader()
{
    fprintf(fp, "%s\n", ".arch armv7ve");
    fprintf(fp, "%s\n", ".arm");
    fprintf(fp, "%s\n", ".fpu vfpv4");

    // ARM32的32位立即数mov操作宏，需要时请打开
    fprintf(fp, "%s\n", R"(
.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm
)");
}

/// @brief 全局变量Section，主要包含初始化的和未初始化过的
void CodeGeneratorArm32::genDataSection()
{
    // 可直接操作文件指针fp进行写操作
	
	// 全局变量支持。
	// for(auto &inst :symtab.getGlobalVarDefInsts().getInsts())
	// {
    //     auto res = inst->getDst();
    //     res->setGlobalName(CodeGeneratorArm32::globalValueCount);
    //     std::string str;
    //     str += res->global_name + ":\n";
    //     str += "        " + std::string(".long   ") + res->getName() + "\n";
    //     fprintf(fp, "%s", str.c_str());
    // }
    //     CodeGeneratorArm32::globalValueCount++;


    fprintf(fp, ".data\n");
	for(auto & inst :symtab.getGlobalVarDefInsts().getInsts())
	{
        auto res = inst->getDst();
        Value * arg = nullptr;
        if (!inst->getSrc().empty()) {
            arg = inst->getSrc1();
        }
        res->createGlobalName();
        std::string str = res->getName();
        str += ":\n";
		//非数组情况
		if(res->array_info==nullptr)
		{
	        str += "        .long   ";
			if(arg!=nullptr)
			{
				str += to_string(arg->intVal) + "\n";
			}else
			{
                str += "0\n";
            }
        }else
		{
			//数组情况
	        str += "        .zero   ";
            str += std::to_string(res->array_info->getArraySize() * 4) ;
            str += "\n";
        }
        fprintf(fp, "%s", str.c_str());
    }

}

/// @brief 针对函数进行汇编指令生成，放到.text代码段中
/// @param func 要处理的函数
void CodeGeneratorArm32::genCodeSection(Function * func)
{
	//每个函数前面都输入一下全局变量的标签。
	// 全局变量支持。
	for(auto &inst :symtab.getGlobalVarDefInsts().getInsts())
	{
	    auto res = inst->getDst();
	    res->setGlobalName(CodeGeneratorArm32::globalValueCount);
	    std::string str;
	    str += res->global_name + ":\n";
	    str += "        " + std::string(".long   ") + res->getName() + "\n";
	    fprintf(fp, "%s", str.c_str());
	}
	CodeGeneratorArm32::globalValueCount++;

    // 寄存器分配以及栈内局部变量的站内地址重新分配
    registerAllocation(func);

    // 获取函数的指令列表
    std::vector<IRInst *> & IrInsts = func->getInterCode().getInsts();

    // ILOC代码序列
    ILocArm32 iloc(&symtab);

    // 指令选择生成汇编指令
    InstSelectorArm32 instSelector(IrInsts, iloc, func);
    instSelector.run();

    // 删除无用的Label指令
    iloc.deleteUsedLabel();

    // ILOC代码输出为汇编代码
    string name = func->getName();
    string asmName = name[0] == '@' ? name.substr(1) : name;
    fprintf(fp, ".global %s\n", asmName.c_str());
    fprintf(fp, ".type %s, %%function\n", asmName.c_str());
    fprintf(fp, "%s:\n", asmName.c_str());
    iloc.outPut(fp);
}

/// @brief 寄存器分配
/// @param func 函数指针
void CodeGeneratorArm32::registerAllocation(Function * func)
{
    // 内置函数不需要处理
    if (func->isBuiltin()) {
        return;
    }

#ifndef FUNC_PARAM_STACK_ONE
    // 对于形参的前四个参数默认分配四个局部变量，用于保存前四个寄存器的值
    // 前四个之后的形参直接用实参的地址进行访问。
    // 如果定义宏FUNC_PARAM_STACK_ONE，则前四个参数后的形参也分配局部变量，
    // 需要额外的赋值指令，把实参的值赋值给形参对应的局部变量
    adjustFormalParamStack(func);
#endif

    // 局部变量都保存在栈内，同时调整函数内栈内大小
    stackAlloc(func);

    // 目前采用最简单的寄存器分配策略，2个寄存器，最多三个寄存器使用，除了函数调用

    // R0,R1,R2,R3这些寄存器不需要保护
    // R10(10), fp(11), lx(14)需要保护
    auto & protectedRegNo = func->getProtectedReg();
    protectedRegNo.push_back(REG_ALLOC_SIMPLE_TMP_REG_NO);
    protectedRegNo.push_back(REG_ALLOC_SIMPLE_FP_REG_NO);
    protectedRegNo.push_back(4);
    protectedRegNo.push_back(5);
    protectedRegNo.push_back(6);
    protectedRegNo.push_back(7);

    if (func->getExistFuncCall()) {
        protectedRegNo.push_back(REG_ALLOC_SIMPLE_LX_REG_NO);
    }
	// 线性扫描从哪开始呢。


    // 函数形参要求前四个寄存器分配，后面的参数采用栈传递
    // 针对后面的栈传递参数，一种处理方式为增加赋值操作，内存赋值给形参，形参再次分配空间
    // 另外一种处理方式，形参直接用实参的地址，也就是变为内存变量，具体见如下的函数处理
    adjustFormalParamInsts(func);

    // 调整函数调用指令，主要是前四个寄存器传值，后面用栈传递
    adjustFuncCallInsts(func);
	// 从这里开始线性扫描？
	//初始化寄存器分配类。
    regAlloc = new RegAlloction(&symtab, func);
    regAlloc->run();
}

/// @brief 寄存器分配前对函数内的指令进行调整，以便方便寄存器分配
/// @param func 要处理的函数
void CodeGeneratorArm32::adjustFormalParamStack(Function * func)
{
    // 函数形参的前四个参数采用的是寄存器传值，需要把值拷贝到本地栈形参变量上
    auto & params = func->getParams();

    // 根据C语言的约定，除前4个外的实参进行值传递，逆序入栈
    for (int k = 4; k < (int) params.size(); k++) {

        // 形参名字无效，则忽略
        if (params[k].name.empty()) {
            continue;
        }

        Value * val = params[k].val;
		//真实值
		Value * real_val = func->findValue(params[k].varName);
		real_val->baseRegNo = REG_ALLOC_SIMPLE_FP_REG_NO;

        // 栈内分配，但是寄存器偏移先不填写，待定
        val->baseRegNo = REG_ALLOC_SIMPLE_FP_REG_NO;
    }
}

/// @brief 寄存器分配前对函数内的指令进行调整，以便方便寄存器分配
/// @param func 要处理的函数
void CodeGeneratorArm32::adjustFormalParamInsts(Function * func)
{
    // 函数形参要求前四个寄存器分配，后面的参数采用栈传递
    // 针对后面的栈传递参数，一种处理方式为增加赋值操作，内存赋值给形参，形参再次分配空间
    // 另外一种处理方式，形参直接用实参的地址，也就是变为内存变量
    std::vector<IRInst *> newInsts;

    // 函数形参的前四个参数采用的是寄存器传值，需要把值拷贝到本地栈形参变量上
    auto & params = func->getParams();

    // 因为假定用的R1与R2进行运算，而寄存器传值也用R0到R3
    // 如果先处理了后面的参数，R1与R2的值会被更改。
    for (int k = 0; k < (int) params.size() && k <= 3; k++) {

        // 形参名字无效，则忽略
        if (params[k].name.empty()) {
            continue;
        }
		//这里的params的val是临时变量
        // Value * val = params[k].val;
		//这才是真正在栈里面分配了空间的值。
        Value * real_val = func->findValue(params[k].varName);
        // RegVal[k]->_isReg = true;
        // 产生赋值指令,R#n寄存器赋值到对应的变量上，放到放到Entry指令的后面
        // 注意R#n寄存器需要事先分配几个Value
        newInsts.push_back(new AssignIRInst(real_val, RegVal[k]));
    }

    // 形参的前四个采用fp+偏移寻址，后面的sp+偏移寻址实参空间
    // 根据C语言的约定，除前4个外的实参进行值传递，逆序入栈
    int fp_esp = func->getMaxDep() + (int) func->getProtectedReg().size() * 4;
    for (int k = 4; k < (int) params.size(); k++) {

        // Value * val = params[k].val;

        // 目前假定变量大小都是4字节

        // 形参名字无效，则忽略
        if (params[k].name.empty()) {

            // 增加4字节
            fp_esp += 4;

            continue;
        }

#ifdef FUNC_PARAM_STACK_ONE
        // 新建一个内存变量，用于栈传值到内存中
        Value * newVal = new MemValue(BasicType::TYPE_INT);
        newVal->baseRegNo = REG_ALLOC_SIMPLE_FP_REG_NO;
        newVal->setOffset(fp_esp);
		//这里的params的val是临时变量
        // Value * val = params[k].val;
		//这才是真正在栈里面分配了空间的值。
        Value * real_val = func->findValue(params[k].varName);
        // 新建一个赋值指令
        newInsts.push_back(new AssignIRInst(real_val, newVal));
#else
        val->setOffset(fp_esp);
#endif

        // 增加4字节
        fp_esp += 4;
    }

    // 当前函数的指令列表
    auto & insts = func->getInterCode().getInsts();

    // Entry指令的下一条指令
    auto pEntryAfterIter = insts.begin() + 2;

	// 插入之前，先擦除IR部分语句，能感觉到下面新增的这些语句是有重复的。
    for (int k = 0; k < params.size();k++) {
        insts.erase(pEntryAfterIter);
    }

    // 逐个插入指令到entry的后面
	// 我的entry前面还有一条label指令，所以要+2
    insts.insert(pEntryAfterIter, newInsts.begin(), newInsts.end());
}

/// @brief 寄存器分配前对函数内的指令进行调整，以便方便寄存器分配
/// @param func 要处理的函数
void CodeGeneratorArm32::adjustFuncCallInsts(Function * func)
{
    std::vector<IRInst *> newInsts;

    // 当前函数的指令列表
    auto & insts = func->getInterCode().getInsts();

    // 函数返回值用R0寄存器，若函数调用有返回值，则赋值R0到对应寄存器
    for (auto pIter = insts.begin(); pIter != insts.end(); pIter++) {
		
        // 检查是否是函数调用指令，并且含有返回值
        FuncCallIRInst * callInst = dynamic_cast<FuncCallIRInst *>(*pIter);
        if (callInst) {

            // 实参前四个要寄存器传值，其它参数通过栈传递

            IRInst * assignInst;

            std::vector<Value *> & args = callInst->getSrc();

            // 前四个参数的后面采用栈传递
            int esp = 0;
            for (int k = 4; k < (int) args.size(); k++) {

                // 新建一个内存变量，用于栈传值到形参变量中
                Value * newVal = new MemValue(BasicType::TYPE_INT);
                newVal->baseRegNo = REG_ALLOC_SIMPLE_SP_REG_NO;
                newVal->setOffset(esp);
                esp += 4;

                assignInst = new AssignIRInst(newVal, args[k]);
				//设置特殊标志位，意味着这条赋值语句特别用于数组传参。
                assignInst->functionParam = true;
                // 函数调用指令前插入后，pIter仍指向函数调用指令
                pIter = insts.insert(pIter, assignInst);
                pIter++;
            }

            for (int k = 0; k < (int) args.size() && k < 4; k++) {

                // 寄存器传值到形参变量中
                assignInst = new AssignIRInst(RegVal[k], args[k]);
				//设置特殊标志位，意味着这条赋值语句特别用于数组传参。
                assignInst->functionParam = true;
                // 函数调用指令前插入后，pIter仍指向函数调用指令
                pIter = insts.insert(pIter, assignInst);
                pIter++;
            }

            // 这里应该区分临时变量或者其它变量，临时变量可变更为寄存器变量，其它需要复制给变量
            // 目前简化处理，都直接赋值给变量

            // 赋值指令
            Value * resultVal = callInst->getDst();
            if (resultVal) {

                if (resultVal->isTemp() && resultVal->regLinerScaner == -1 && resultVal->baseRegNo == -1) {

                    // 该临时变量既没有寄存器分配，也没有设置基址寄存器，直接设置为寄存器即可
                    resultVal->regLinerScaner = 0;
                } else {

                    // 新建一个赋值操作
                    assignInst = new AssignIRInst(resultVal, RegVal[0]);

                    // 函数调用指令的下一个指令的前面插入指令，因为有Exit指令，+1肯定有效
                    pIter = insts.insert(pIter + 1, assignInst);
                }
            }
        }
    }
}

/// @brief 栈空间分配
/// @param func 要处理的函数
void CodeGeneratorArm32::stackAlloc(Function * func)
{
    // 遍历函数内的所有指令，查找没有寄存器分配的变量，然后进行栈内空间分配

    int32_t sp_esp = 0;

    // 获取函数变量列表
    std::vector<Value *> & vars = func->getVarValues();

    for (auto var: vars) {

        // 对于简单类型的寄存器分配策略，临时变量都会用寄存器，这里需要忽略
        // 而对于图着色等，临时变量可能会变更内存分配，这时应该调整类型
        // if (var->isTemp())
        //     continue;

        if ((var->regId == -1) && (var->baseRegNo == -1)) {

            // 该变量没有分配寄存器

            int32_t size = var->getSize();

            // 32位ARM平台按照4字节的大小整数倍分配局部变量
            size += (4 - size % 4) % 4;

            // 局部变量偏移
            var->setOffset(sp_esp);

            // 累计当前作用域大小
            sp_esp += size;

            // 设置基址寄存器名字
            var->baseRegNo = REG_ALLOC_SIMPLE_FP_REG_NO;
        }
    }

    // 设置函数的最大栈帧深度，在加上实参内存传值的空间
    // 请注意若支持浮点数，则必须保持栈内空间8字节对齐
    func->setMaxDep(sp_esp);
}

/// @brief 进行线性扫描执行的主要函数。
void RegAlloction::run()
{
	// 指令编号。
    orderInst();

	//获得活跃区间。
    getIntervals();

	//寄存器分配。
    alloction();
}
/// @brief 给func内部的指令序列进行编号。
void RegAlloction::orderInst()
{	
	//最简单的遍历function的Insts进行编号。
    int count = 0;
	for(auto inst:this->func->getInterCode().getInsts())
	{
        inst->instCount = count;
        count++;
    }
}

/// @brief 计算变量的活跃区间。
void RegAlloction::getIntervals()
{
	for(auto inst:this->func->getInterCode().getInsts())
	{
        if (inst->getDst() != nullptr&&isScanValue(inst->getDst()))
		{
            Value * val = inst->getDst();
            createOrUpdateInterval(val,inst->instCount);
        }
		if(inst->getSrc1()!=nullptr&&isScanValue(inst->getSrc1()))
		{
			Value * val = inst->getSrc1();
            createOrUpdateInterval(val,inst->instCount);
		}
		if(inst->getSrc2()!=nullptr&&isScanValue(inst->getSrc2()))
		{
			Value * val = inst->getSrc2();
            createOrUpdateInterval(val,inst->instCount);
		}

    }
	//
	for(auto v : intervalVector)
	{
        intervalQueue.push(v);
    }
}

/// @brief 根据当前val与map，决定创建新的interval还是对现有的interval进行更新。
/// @param val 
void RegAlloction::createOrUpdateInterval(Value * val,int order)
{
	//不存在对应的interval
	if(valueIntervalMap.count(val)==0)
	{
        valueInterval * interval = new valueInterval(order, val);
        valueIntervalMap.emplace(val, interval);
        intervalVector.push_back(interval);
    } else {
        //对应的interval已经存在。
        valueIntervalMap[val]->update(order);
    }
}

/// @brief 检查当前的val是否为需要进行线性扫描的value.
/// @param val 
/// @return true为真，false表示val为空，或者不需要对其进行线性扫描。
bool RegAlloction::isScanValue(Value * val)
{
    int result = true;
	//val 为空，不进行线性扫描。
	if(val==nullptr)
	{
        result = false;
    }
	//val为常数，不进行线性扫描
	if(val->isConst())
	{
        result = false;
    }
    //val 为global 不进行线性扫描。
	if(val->_global)
	{
        result = false;
    }
	//val 为数组 不进行线性扫描
	if(val->array_info!=nullptr)
	{
        result = false;
    }
	if(val->type.type!=BasicType::TYPE_INT)
	{
        result = false;
    }
	if(val->_isReg)
	{
        result = false;
    }
    return result;
}

/// @brief 根据interval的结果进行寄存器分配。
void RegAlloction::alloction()
{
	while(!intervalQueue.empty())
	{
        auto interval = intervalQueue.top();
        intervalQueue.pop();
		//淘汰旧的active interval
        ExpireOldIntervals(interval);

        //分配寄存器
		if(haveFreeReg())
		{
            int aimReg = getFreeReg();
            interval->val->regLinerScaner = aimReg;
			//把这个interval加入activeVector
            addIntervalToActive(interval);

        }else
		{
			//spill
            valueInterval * lastInterval = activeVector.back();
			if(lastInterval->end<interval->end)
			{
                interval->val->regLinerScaner = -1;
            }else
			{
                interval->val->regLinerScaner = lastInterval->val->regLinerScaner;
                lastInterval->val->regLinerScaner = -1;
                activeVector.pop_back();
                addIntervalToActive(interval);
            }
        }
    }
}

/// 根据当前打算加入的interval淘汰已经被激活的interval。
void RegAlloction::ExpireOldIntervals(valueInterval * interval)
{
	if(activeVector.empty())
	{
        return;
    }
	auto it = std::lower_bound(activeVector.begin(), activeVector.end(), interval, [](valueInterval* lhs, valueInterval* rhs) {
		return lhs->end < rhs->start;
    });
    for (auto ii = activeVector.begin(); ii != it; ii++) {
        int reg = (*ii)->val->regLinerScaner;
		if(reg<4||reg>7)
		{
            printf("error reg number = %d\n", reg);
        }
        freeReg.push(reg);
    }

    activeVector.erase(activeVector.begin(), it);
}

/// @brief 把当前的interval插入到activeVector中。
/// @param interval 
void RegAlloction::addIntervalToActive(valueInterval * interval)
{
	auto pos = std::lower_bound(activeVector.begin(), activeVector.end(), interval, [](valueInterval* lhs, valueInterval* rhs) {
        return lhs->end < rhs->end;
    });

    activeVector.insert(pos, interval);
}