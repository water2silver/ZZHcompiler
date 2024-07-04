/**
 * @file CodeGeneratorArm32.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief ARM32的后端处理头文件
 * @version 0.1
 * @date 2023-09-26
 * @copyright Copyright (c) 2023
 *
 */

#include "CodeGeneratorAsm.h"
#include "PlatformArm32.h"
#include <queue>
#include <map>
#include <algorithm>

/// @brief 用于管理变量作用域的interval
class valueInterval
{
public:
    /// @brief valueInterval的构造函数。
    /// @param _start 
    /// @param _val 
    valueInterval(int _start, Value * _val):start(_start),val(_val)
	{
        // start = _start;
        end = _start;
    }
    /// @brief 更新valueInterval的end
	/// @param i 
	void update(int i)
	{
        end = i;
    }

public:
    int start;
    int end;
    Value * val;
};

/// @brief 寄存器分配管理类，在指令翻译的时候动态执行。
class RegAlloction {

public:

	RegAlloction(SymbolTable* _symtab,Function * _func):symtab(_symtab),func(_func)
	{
		//空闲寄存器
        freeReg.push(4);
        freeReg.push(5);
        freeReg.push(6);
        freeReg.push(7);

    }

    /// @brief 进行线性扫描执行的主要函数。
    void run();

    /// @brief 给func内部的指令序列进行编号。
    void orderInst();

    /// @brief 计算变量的活跃区间。
    void getIntervals();

	/// @brief 根据interval的结果进行寄存器分配。
    void alloction();

protected:
    /// @brief 根据当前val与map，决定创建新的interval还是对现有的interval进行更新。
    /// @param val 
    void createOrUpdateInterval(Value * val,int order);

    /// @brief 检查当前的val是否为需要进行线性扫描的value.
    /// @param val 
    /// @return true为真，false表示val为空，或者不需要对其进行线性扫描。
    bool isScanValue(Value * val);

	/// @brief 根据当前打算加入的interval淘汰已经被激活的interval。
    void ExpireOldIntervals(valueInterval * interval);

    /// @brief 把当前的interval插入到activeVector中。
    /// @param interval 
    void addIntervalToActive(valueInterval * interval);

    /// @brief 当前是否有空闲寄存器。
    /// @return 如有空闲寄存器，返回 true;
    bool haveFreeReg()
    {
        return !freeReg.empty();
    }

	/// @brief 返回一个当前闲置的寄存器，调用前应当保证freeReg非空。
	/// @return 
	int getFreeReg()
	{	
		if(freeReg.empty())
		{
            return -1;
        }
        int reg = freeReg.top();
        freeReg.pop();
        return reg;
    }

public:
    std::stack<int> freeReg;

protected:
    SymbolTable * symtab;
    Function * func;
	//Value * 到 interval的映射？
    std::map<Value *, valueInterval *> valueIntervalMap;

    /// @brief 存放Interval的vector。
    std::vector<valueInterval *> intervalVector;

    struct intervalStartCompare
    {
        bool operator()(valueInterval* l, valueInterval* r) const { return l->start > r->start; }
    } ;
	struct intervalEndCompare
    {
        bool operator()(valueInterval* l, valueInterval* r) const { return l->end < r->end; }
    } ;
	//活跃区间的优先队列。 按照start升序排列。
    std::priority_queue<valueInterval*,std::vector<valueInterval*>,intervalStartCompare> intervalQueue;

	//在寄存器分配过程中，被激活的interval。
	// std::priority_queue<valueInterval*,std::vector<valueInterval*>,intervalEndCompare> activeQueue;
    //activeVector 按照 end递增的方向进行排序。
	std::vector<valueInterval *> activeVector;
};

class CodeGeneratorArm32 : public CodeGeneratorAsm {

public:
    /// @brief 构造函数
    /// @param tab 符号表
    CodeGeneratorArm32(SymbolTable & tab);

    /// @brief 析构函数
    ~CodeGeneratorArm32() override;

    static int globalValueCount;

protected:
    /// @brief 产生汇编头部分
    void genHeader() override;

    /// @brief 全局变量Section，主要包含初始化的和未初始化过的
    void genDataSection() override;

    /// @brief 针对函数进行汇编指令生成，放到.text代码段中
    /// @param func 要处理的函数
    void genCodeSection(Function * func) override;

    /// @brief 寄存器分配
    /// @param func 要处理的函数
    void registerAllocation(Function * func) override;

    /// @brief 栈空间分配
    /// @param func 要处理的函数
    void stackAlloc(Function * func);

    /// @brief 确保前四个参数之后的参数必须栈内分配
    /// @param func 要处理的函数
    void adjustFormalParamStack(Function * func);

    /// @brief 寄存器分配前对函数内的指令进行调整，以便方便寄存器分配
    /// @param func 要处理的函数
    void adjustFuncCallInsts(Function * func);

    /// @brief 寄存器分配前对形参指令调整，便于栈内空间分配以及寄存器分配
    /// @param func 要处理的函数
    void adjustFormalParamInsts(Function * func);

public:
    RegAlloction * regAlloc;

private:
    /// @brief 对寄存器R0分配Value，记录位置
    Value * RegVal[PlatformArm32::maxRegNum];
};
