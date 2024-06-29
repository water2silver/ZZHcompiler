﻿/**
 * @file InstSelectorArm32.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 指令选择器-ARM32
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#include <cstdio>

#include "Function.h"
#include "ILocArm32.h"
#include "IRInst.h"
#include "InstSelectorArm32.h"
#include "PlatformArm32.h"
#include "Value.h"
#include "CodeGeneratorArm32.h"

/// @brief 构造函数
/// @param _irCode 指令
/// @param _iloc ILoc
/// @param _func 函数
InstSelectorArm32::InstSelectorArm32(vector<IRInst *> & _irCode, ILocArm32 & _iloc, Function * _func)
    : ir(_irCode), iloc(_iloc), func(_func)
{
    translator_handlers[IRInstOperator::IRINST_OP_ENTRY] = &InstSelectorArm32::translate_entry;
    translator_handlers[IRInstOperator::IRINST_OP_EXIT] = &InstSelectorArm32::translate_exit;

    translator_handlers[IRInstOperator::IRINST_OP_LABEL] = &InstSelectorArm32::translate_label;
    // translator_handlers[IRInstOperator::IRINST_OP_GOTO] = &InstSelectorArm32::translate_goto;

    translator_handlers[IRInstOperator::IRINST_OP_ASSIGN] = &InstSelectorArm32::translate_assign;

    translator_handlers[IRInstOperator::IRINST_OP_ADD_I] = &InstSelectorArm32::translate_add_int32;
    translator_handlers[IRInstOperator::IRINST_OP_SUB_I] = &InstSelectorArm32::translate_sub_int32;

    translator_handlers[IRInstOperator::IRINST_OP_FUNC_CALL] = &InstSelectorArm32::translate_call;

	//变量定义语句
	translator_handlers[IRInstOperator::IRINST_OP_VAR_DEF] = &InstSelectorArm32::translate_var_def;

	//乘法计算
	translator_handlers[IRInstOperator::IRINST_OP_TIMES_I] = &InstSelectorArm32::translate_mul_int32;
	//除法计算
	translator_handlers[IRInstOperator::IRINST_OP_DIV_I] = &InstSelectorArm32::translate_div_int32;
	//取负指令
	translator_handlers[IRInstOperator::IRINST_OP_NEGATIVE_I] = &InstSelectorArm32::translate_negative;



	/* 表达式运算，关系运算*/
    translator_handlers[IRInstOperator::IRINST_OP_LESS_THAN_I] = &InstSelectorArm32::translate_less_than;
    translator_handlers[IRInstOperator::IRINST_OP_GREATER_THAN_I] = &InstSelectorArm32::translate_greater_than;
    translator_handlers[IRInstOperator::IRINST_OP_LESS_EQUAL_I] = &InstSelectorArm32::translate_less_equal;
    translator_handlers[IRInstOperator::IRINST_OP_GREATER_EQUAL_I] = &InstSelectorArm32::translate_greater_equal;
    translator_handlers[IRInstOperator::IRINST_OP_EQUAL_I] = &InstSelectorArm32::translate_equal;
    translator_handlers[IRInstOperator::IRINST_OP_NOT_EQUAL_I] = &InstSelectorArm32::translate_not_equal;

    translator_handlers[IRInstOperator::IRINST_OP_NOT_ZERO_I] = &InstSelectorArm32::translate_not_zero;
    
	//IfIRInst
	translator_handlers[IRInstOperator::IRINST_OP_IF] = &InstSelectorArm32::translate_if;
	//branchIRInst
	translator_handlers[IRInstOperator::IRINST_OP_GOTO] = &InstSelectorArm32::translate_branch;

}

/// @brief 指令选择执行
void InstSelectorArm32::run()
{
    int count = 1;
    for (auto inst: ir) {
		//
        if(iloc.getCode().size()/900>=count)
		{
            count++;
			// 全局变量支持。
			for(auto &inst :iloc.symtab->getGlobalVarDefInsts().getInsts())
			{
				auto res = inst->getDst();
				res->setGlobalName(CodeGeneratorArm32::globalValueCount);
				std::string str;
				str += res->global_name + ":\n";
				str += "        " + std::string(".long   ") + res->getName() ;
                iloc.label(str);
            }
            CodeGeneratorArm32::globalValueCount++;
        }
        // 逐个指令进行翻译
        if (!inst->isDead()) {
            translate(inst);
        }
    }
}

/// @brief NOP翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_nop(IRInst * inst)
{
    (void) inst;
    iloc.nop();
}

/// @brief Label指令指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_label(IRInst * inst)
{
    std::string str;
    inst->toString(str);
    iloc.label(str);
}

/// @brief goto指令指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_goto(IRInst * inst)
{}

/// @brief 函数入口指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_entry(IRInst * inst)
{
    // 查看保护的寄存器
    auto & protectedRegNo = func->getProtectedReg();
    auto & protectedRegStr = func->getProtectedRegStr();

    bool first = true;
    for (auto regno: protectedRegNo) {
        if (first) {
            protectedRegStr = PlatformArm32::regName[regno];
            first = false;
        } else if (!first) {
            protectedRegStr += "," + PlatformArm32::regName[regno];
        }
    }

    if (!protectedRegStr.empty()) {
        iloc.inst("push", "{" + protectedRegStr + "}");
    }

    // 为fun分配栈帧，含局部变量、函数调用值传递的空间等
    iloc.allocStack(func, REG_ALLOC_SIMPLE_TMP_REG_NO);
}

/// @brief 函数出口指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_exit(IRInst * inst)
{
    if (!inst->getSrc().empty()) {
        // 存在返回值
        Value * retVal = inst->getSrc1();

        // 赋值给寄存器R0
        iloc.load_var(0, retVal);
    }

    auto & protectedRegStr = func->getProtectedRegStr();

    // 恢复栈空间
    iloc.inst("add",
              PlatformArm32::regName[REG_ALLOC_SIMPLE_FP_REG_NO],
              PlatformArm32::regName[REG_ALLOC_SIMPLE_FP_REG_NO],
              iloc.toStr(func->getMaxDep()));

    iloc.inst("mov", "sp", PlatformArm32::regName[REG_ALLOC_SIMPLE_FP_REG_NO]);

    // 保护寄存器的恢复
    if (!protectedRegStr.empty()) {
        iloc.inst("pop", "{" + protectedRegStr + "}");
    }

    iloc.inst("bx", "lr");
}

/// @brief 赋值指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_assign(IRInst * inst)
{
    Value * rs = inst->getDst();
    Value * arg1 = inst->getSrc1();
    std::string srcRegName1 = PlatformArm32::regName[REG_ALLOC_SIMPLE_SRC1_REG_NO];
    std::string srcRegName2 = PlatformArm32::regName[REG_ALLOC_SIMPLE_SRC2_REG_NO];

	ArmInst::addtionInfo = "";
    ArmInst::addtionInfo = "\t@IRInst:assign" ;
    if(inst->getDst())
	{
        ArmInst::addtionInfo += "\t" + inst->getDst()->getName();
    }
	if(inst->getSrc1())
	{
        ArmInst::addtionInfo += "\t" + inst->getSrc1()->getName();
    }
	if(inst->getSrc2())
	{
        ArmInst::addtionInfo += "\t" + inst->getSrc2()->getName();
    }

    if (arg1->regId != -1) {
        // 寄存器 => 内存
        // 寄存器 => 寄存器

        // r8 -> rs 可能用到r9
        iloc.store_var(arg1->regId, rs, 9);

    } else if (rs->regId != -1) {
        // 内存变量 => 寄存器
		// 函数传参应该会走这里。
        iloc.load_var(rs->regId, arg1);

    } else {
        // 内存变量 => 内存变量

		// 数组赋值的特化处理。
		if( rs->type.type==BasicType::TYPE_POINTER)
		{
            // 给数组赋值。a[1] = 3;
            // iloc.inst("ldr",
            //           "r5",
            //           "[" + PlatformArm32::regName[rs->baseRegNo] + +",#" + std::to_string(rs->getOffset()) + "]");
			// iloc.load_var(4, arg1);
            // iloc.inst("str", "r4", std::string("[r5]"));

			iloc.load_var(REG_ALLOC_SIMPLE_SRC2_REG_NO, rs);
			iloc.load_var(REG_ALLOC_SIMPLE_SRC1_REG_NO, arg1);
			iloc.inst("str", srcRegName1, "["+ srcRegName2 +"]");

        }else if( arg1->type.type==BasicType::TYPE_POINTER) 
		{
			//把数组的值赋给其他。
			// iloc.inst("ldr",
            //           "r4",
            //           "[" + PlatformArm32::regName[arg1->baseRegNo] + +",#" + std::to_string(arg1->getOffset()) + "]");
			// iloc.inst("ldr", "r4", "[r4]");
            iloc.load_var(REG_ALLOC_SIMPLE_SRC1_REG_NO, arg1);
			iloc.inst("ldr", srcRegName1, "["+ srcRegName1 +"]");
            iloc.store_var(REG_ALLOC_SIMPLE_SRC1_REG_NO, rs, 9);
        } else {
            // arg1 -> r8
			iloc.load_var(REG_ALLOC_SIMPLE_SRC1_REG_NO, arg1);
			iloc.store_var(REG_ALLOC_SIMPLE_SRC1_REG_NO, rs, 9);
        }
    }
	ArmInst::addtionInfo = "";
}

/// @brief 变量定义语句，其实跟赋值语句差不多。
/// @param inst IR指令。
void InstSelectorArm32::translate_var_def(IRInst * inst)
{
	if(inst->getSrc().empty())
	{
        return;
    }
    Value * rs = inst->getDst();
    Value * arg1 = inst->getSrc1();

    if (arg1->regId != -1) {
        // 寄存器 => 内存
        // 寄存器 => 寄存器

        // r8 -> rs 可能用到r9
        iloc.store_var(arg1->regId, rs, 9);

    } else if (rs->regId != -1) {
        // 内存变量 => 寄存器

        iloc.load_var(rs->regId, arg1);

    } else {
        // 内存变量 => 内存变量

        // arg1 -> r8
        iloc.load_var(REG_ALLOC_SIMPLE_SRC1_REG_NO, arg1);

        // r8 -> rs 可能用到r9
        iloc.store_var(REG_ALLOC_SIMPLE_SRC1_REG_NO, rs, 9);
    }
}

/// @brief 非0的指令的计算
/// @param inst 
void InstSelectorArm32::translate_not_zero(IRInst * inst)
{
	translate_compare(inst, "not_zero");
}

/// @brief == 指令计算。
/// @param inst 
void InstSelectorArm32::translate_equal(IRInst * inst)
{
	translate_compare(inst, "beq");
}

/// @brief != 指令计算。
/// @param inst 
void InstSelectorArm32::translate_not_equal(IRInst * inst)
{
	translate_compare(inst, "bne");
}

/// @brief ＞指令计算。
/// @param inst 
void InstSelectorArm32::translate_greater_than(IRInst * inst)
{
	translate_compare(inst, "bgt");
}

/// @brief ＞=指令计算。
/// @param inst 
void InstSelectorArm32::translate_greater_equal(IRInst * inst)
{
	translate_compare(inst, "bge");
}

/// @brief <指令计算。
/// @param inst 
void InstSelectorArm32::translate_less_than(IRInst * inst)
{
	translate_compare(inst, "blt");
}

/// @brief <=指令计算。
/// @param inst 
void InstSelectorArm32::translate_less_equal(IRInst * inst)
{
	translate_compare(inst, "ble");
}
/// @brief 比较指令
/// @param inst 
void InstSelectorArm32::translate_compare(	IRInst * inst,
											string operator_name,
											Value * resVal, 
											int op1_reg_no,
											int op2_reg_no)
{
	Value * arg1 = inst->getSrc1();
    Value * arg2 = inst->getSrc2();
	ArmInst::addtionInfo = "";
    ArmInst::addtionInfo = "\t@IRInst:" + operator_name;
    if(inst->getDst())
	{
        ArmInst::addtionInfo += "\t" + inst->getDst()->getName();
    }
	if(inst->getSrc1())
	{
        ArmInst::addtionInfo += "\t" + inst->getSrc1()->getName();
    }
	if(inst->getSrc2())
	{
        ArmInst::addtionInfo += "\t" + inst->getSrc2()->getName();
    }
    // ArmInst::addtionInfo += "\n";

	std::string arg1_reg_name, arg2_reg_name;
    int arg1_reg_no = arg1->regId, arg2_reg_no = arg2->regId;

    // 看arg1是否是寄存器，若是则寄存器寻址，否则要load变量到寄存器中
    if (arg1_reg_no == -1) {
        // arg1 -> r8
        iloc.load_var(op1_reg_no, arg1);
    } else if (arg1_reg_no != op1_reg_no) {
        // 已分配的操作数1的寄存器和操作数2的缺省寄存器一致，这样会使得操作数2的值设置到一个寄存器上
        // 缺省寄存器  2    3
        // 实际寄存器  3    -1   有问题
        // 实际寄存器  3    3    有问题
        // 实际寄存器  3    4    无问题
        if ((arg1_reg_no == op2_reg_no) && ((arg2_reg_no == -1) || (arg2_reg_no == op2_reg_no))) {
            iloc.mov_reg(op1_reg_no, arg1_reg_no);
        } else {
            op1_reg_no = arg1_reg_no;
        }
    }

    arg1_reg_name = PlatformArm32::regName[op1_reg_no];

    // 看arg2是否是寄存器，若是则寄存器寻址，否则要load变量到寄存器中
    if (arg2_reg_no == -1) {
        // arg1 -> r8
        iloc.load_var(op2_reg_no, arg2);
    } else if (arg2_reg_no != op2_reg_no) {
        // 已分配的操作数2的寄存器和操作数1的缺省寄存器一致，这样会使得操作数2的值设置到一个寄存器上
        // 缺省寄存器  2    3
        // 实际寄存器  -1   2   有问题
        // 实际寄存器  2    2    有问题
        // 实际寄存器  4    2    无问题
        if ((arg2_reg_no == op1_reg_no) && ((arg1_reg_no == -1) || (arg1_reg_no == op1_reg_no))) {
            iloc.mov_reg(op2_reg_no, arg2_reg_no);
        } else {
            op2_reg_no = arg2_reg_no;
        }
    }

    arg2_reg_name = PlatformArm32::regName[op2_reg_no];

    iloc.inst("cmp", arg1_reg_name, arg2_reg_name);
	//把Compare的结果储存起来。用于测例49-50
	if(operator_name == "not_zero")
	{
        std::string tmpReg = PlatformArm32::regName[REG_ALLOC_SIMPLE_DST_REG_NO];
        iloc.inst("moveq",tmpReg , "#0");
        iloc.store_var(REG_ALLOC_SIMPLE_DST_REG_NO, inst->getDst(), REG_ALLOC_SIMPLE_TMP_REG_NO);
    }
    // iloc.inst(operator_name, inst->getTrueLabelName());
    ArmInst::addtionInfo = "";

}

/// @brief 处理bc语句的label
/// @param inst 
void InstSelectorArm32::translate_if(IRInst * inst)
{
	if(!inst->additon.empty())
	{
        iloc.inst(inst->additon, inst->getTrueLabelName());
    }else
	{
		//Cond Not Equa Zero
		iloc.inst("beq", inst->getFalseLabelName());
	    iloc.inst("b", inst->getTrueLabelName());
        return;
    }
    iloc.inst("b", inst->getFalseLabelName());
}

/// @brief 跳转指令
/// @param inst 
void InstSelectorArm32::translate_branch(IRInst * inst)
{
	//单调转的语句
    iloc.inst("b", inst->getTrueLabelName());
}

/// @brief 二元操作指令翻译成ARM32汇编
/// @param inst IR指令
/// @param operator_name 操作码
/// @param rs_reg_no 结果寄存器号
/// @param op1_reg_no 源操作数1寄存器号
/// @param op2_reg_no 源操作数2寄存器号
void InstSelectorArm32::translate_two_operator(IRInst * inst,
                                               string operator_name,
                                               int rs_reg_no,
                                               int op1_reg_no,
                                               int op2_reg_no)
{
    Value * rs = inst->getDst();
    Value * arg1 = inst->getSrc1();
    Value * arg2 = inst->getSrc2();

	//additon信息设置。
   	
    ArmInst::addtionInfo = "";
    ArmInst::addtionInfo = "\t@IRInst:" + operator_name;
    if(inst->getDst())
	{
        ArmInst::addtionInfo += "\t" + inst->getDst()->getName();
    }
	if(inst->getSrc1())
	{
        ArmInst::addtionInfo += "\t" + inst->getSrc1()->getName();
    }
	if(inst->getSrc2())
	{
        ArmInst::addtionInfo += "\t" + inst->getSrc2()->getName();
    }
    // ArmInst::addtionInfo += "\n";


    std::string arg1_reg_name, arg2_reg_name;
    int arg1_reg_no = arg1->regId, arg2_reg_no = arg2->regId;

    // 看arg1是否是寄存器，若是则寄存器寻址，否则要load变量到寄存器中
    if (arg1_reg_no == -1) {
        // arg1 -> r8
        iloc.load_var(op1_reg_no, arg1);
    } else if (arg1_reg_no != op1_reg_no) {
        // 已分配的操作数1的寄存器和操作数2的缺省寄存器一致，这样会使得操作数2的值设置到一个寄存器上
        // 缺省寄存器  2    3
        // 实际寄存器  3    -1   有问题
        // 实际寄存器  3    3    有问题
        // 实际寄存器  3    4    无问题
        if ((arg1_reg_no == op2_reg_no) && ((arg2_reg_no == -1) || (arg2_reg_no == op2_reg_no))) {
            iloc.mov_reg(op1_reg_no, arg1_reg_no);
        } else {
            op1_reg_no = arg1_reg_no;
        }
    }

    arg1_reg_name = PlatformArm32::regName[op1_reg_no];

    // 看arg2是否是寄存器，若是则寄存器寻址，否则要load变量到寄存器中
    if (arg2_reg_no == -1) {
        // arg1 -> r8
        iloc.load_var(op2_reg_no, arg2);
    } else if (arg2_reg_no != op2_reg_no) {
        // 已分配的操作数2的寄存器和操作数1的缺省寄存器一致，这样会使得操作数2的值设置到一个寄存器上
        // 缺省寄存器  2    3
        // 实际寄存器  -1   2   有问题
        // 实际寄存器  2    2    有问题
        // 实际寄存器  4    2    无问题
        if ((arg2_reg_no == op1_reg_no) && ((arg1_reg_no == -1) || (arg1_reg_no == op1_reg_no))) {
            iloc.mov_reg(op2_reg_no, arg2_reg_no);
        } else {
            op2_reg_no = arg2_reg_no;
        }
    }

    arg2_reg_name = PlatformArm32::regName[op2_reg_no];

    // 看结果变量是否是寄存器，若不是则采用参数指定的寄存器rs_reg_name
    if (rs->regId != -1) {
        rs_reg_no = rs->regId;
    }
	// else if (rs->isTemp()) {
    //     // 临时变量
    //     rs->regId = rs_reg_no;
    // }

    std::string rs_reg_name = PlatformArm32::regName[rs_reg_no];

    iloc.inst(operator_name, rs_reg_name, arg1_reg_name, arg2_reg_name);

    // 结果不是寄存器，则需要把rs_reg_name保存到结果变量中
    if (rs->regId == -1) {
        // r8 -> rs 可能用到r9
        iloc.store_var(rs_reg_no, rs, op2_reg_no);
    }
    ArmInst::addtionInfo = "";

}

/// @brief 整数加法指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_add_int32(IRInst * inst)
{
    translate_two_operator(inst, "add");
}

/// @brief 整数乘法指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_mul_int32(IRInst * inst)
{
    translate_two_operator(inst, "mul");
}

/// @brief 整数除法乘法指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_div_int32(IRInst * inst)
{
    translate_two_operator(inst, "sdiv");
}

/// @brief 整数减法指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_sub_int32(IRInst * inst)
{
    translate_two_operator(inst, "sub");
}

/// @brief 函数调用指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate_call(IRInst * inst)
{
    FuncCallIRInst * callInst = dynamic_cast<FuncCallIRInst *>(inst);
    iloc.call_fun(callInst->name);
}

/// @brief 取负指令。
/// @param inst 
void InstSelectorArm32::translate_negative(IRInst * inst)
{
    translate_two_operator(inst, "rsb");
}


/// @brief 指令翻译成ARM32汇编
/// @param inst IR指令
void InstSelectorArm32::translate(IRInst * inst)
{
    // 操作符
    IRInstOperator op = inst->getOp();

    map<IRInstOperator, translate_handler>::const_iterator pIter;
    pIter = translator_handlers.find(op);
    if (pIter == translator_handlers.end()) {
        // 没有找到，则说明当前不支持
        printf("Translate: Operator(%d) not support\n", (int) op);
        return;
    }

    (this->*(pIter->second))(inst);
}
