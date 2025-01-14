﻿/**
 * @file IRInst.h
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief IR指令类的头文件
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#pragma once

#include <vector>

#include "Value.h"

/// @brief IR指令操作码
enum class IRInstOperator {

    /// @brief 函数入口指令，对应函数的prologue，用户栈空间分配、寄存器保护等
    IRINST_OP_ENTRY,

    /// @brief 函数出口指令，对应函数的epilogue，用于栈空间的恢复与清理、寄存器恢复等
    IRINST_OP_EXIT,

    /// @brief Label指令，用于语句的跳转
    IRINST_OP_LABEL,

    /// @brief 无条件跳转指令
    IRINST_OP_GOTO,

    /// @brief 整数的加法指令，二元运算
    IRINST_OP_ADD_I,

    /// @brief 整数的减法指令，二元运算
    IRINST_OP_SUB_I,

    /// @brief 赋值指令，一元运算
    IRINST_OP_ASSIGN,

    /// @brief 函数调用，多目运算，个数不限
    IRINST_OP_FUNC_CALL,

    /* 后续可追加其他的IR指令 */
	/// @brief 整数的乘法指令，二元运算
	IRINST_OP_TIMES_I,

	/// @brief 整数的除法指令，二元运算
	IRINST_OP_DIV_I,

	/// @brief 整数的取模
	IRINST_OP_MOD_I,

	/// @brief < 整数指令，二元运算
	IRINST_OP_LESS_THAN_I,

	/// @brief > 整数指令，二元运算
	IRINST_OP_GREATER_THAN_I,

	/// @brief <=整数指令，二元运算
	IRINST_OP_LESS_EQUAL_I,

	/// @brief >=整数指令，二元运算
	IRINST_OP_GREATER_EQUAL_I,

	/// @brief ==整数指令，二元运算
	IRINST_OP_EQUAL_I,

	/// @brief !=整数指令，二元运算
	IRINST_OP_NOT_EQUAL_I,

	/// @brief 非0判断指令所用
	IRINST_OP_NOT_ZERO_I,

	/// @brief &&整数指令，二元运算
	IRINST_OP_LOGICAL_AND_I,

	/// @brief || 整数指令，二元运算
	IRINST_OP_LOGICAL_OR_I,

	/// @brief + 取正运算
	IRINST_OP_POSITIVE_I,

	/// @brief - 取负运算
	IRINST_OP_NEGATIVE_I,

	/// @brief 逻辑运算，取非
	IRINST_OP_LOGICAL_NOT_I,

	/// @brief 变量定义
	IRINST_OP_VAR_DEF,

	/// @brief IR分支
	IRINST_OP_IF,

	/// @brief 全局变量定义
	IRINST_OP_GLOBAL_DEF,

    /// @brief 最大指令码，也是无效指令
    IRINST_OP_MAX
};

/// @brief IR指令的基类
class IRInst {

public:
    /// @brief 构造函数
    IRInst();

    /// @brief 用于函数调用时传参的标志位。
    bool functionParam = false;
    
	/// @brief 构造函数
    /// @param op
    /// @param result
    IRInst(IRInstOperator op, Value * result = nullptr);

    /// @brief 析构函数
    virtual ~IRInst() = default;

    /// @brief 获取指令操作码
    /// @return 指令操作码
    IRInstOperator getOp();

    /// @brief 获取源操作数列表
    /// @return 源操作数列表
    std::vector<Value *> & getSrc();

    /// @brief 获取目的操作数，或者结果操作数
    /// @return 目的操作数，或者结果操作数
    Value * getDst();

    /// @brief 取得源操作数1
    /// @return 源操作数1
    Value * getSrc1();

    /// @brief 取得源操作数1的寄存器号
    /// @return 寄存器号，可能为-1，表示在内存或立即数
    int getSrc1RegId();

    /// @brief 取得源操作数2
    /// @return 源操作数2
    Value * getSrc2();

    /// @brief 取得源操作数2的寄存器号
    /// @return 寄存器号，可能为-1，表示在内存或立即数
    int getSrc2RegId();

    /// @brief 转换成字符串
    virtual void toString(std::string & str);

    /// @brief 是否是Dead指令
    bool isDead()
    {
        return dead;
    }

    /// @brief 设置指令是否是Dead指令
    /// @param _dead 是否是Dead指令，true：Dead, false: 非Dead
    void setDead(bool _dead = true)
    {
        dead = _dead;
    }

    /// @brief 获取Label指令的命令
    /// @return Label名字
    std::string getLabelName()
    {
        return labelName;
    }

	std::string getTrueLabelName()
	{
        return trueInst->getLabelName();
    }

	std::string getFalseLabelName()
	{
        return falseInst->getLabelName();
    }

    /// @brief 附加信息，表示上一步的操作 >= > <= < == != 登。
    std::string additon;

	void setAddition(std::string info)
	{
        this->additon = info;
    }

    /// @brief 这是function的第几条指令。
    int instCount;

protected:
    /// @brief IR指令操作码
    enum IRInstOperator op;

    /// @brief 源操作树
    std::vector<Value *> srcValues;

    /// @brief 目的操作数或结果或跳转指令的目标
    Value * dstValue;

    /// @brief 是否是Dead指令
    bool dead = false;

    /// @brief Label指令的名字
    std::string labelName;

    /// @brief 目标真出口指令，指向Label指令，主要用于有条件跳转
    IRInst * trueInst;

    /// @brief 目标假出口指令，指向Label指令，主要用于有条件跳转
    IRInst * falseInst;


};

/// @brief Label指令
class LabelIRInst : public IRInst {

public:
    /// @brief 构造函数
    LabelIRInst();

    /// @brief 构造函数
    /// @param name Label名字，要确保函数内唯一
    LabelIRInst(std::string name);

    /// @brief 析构函数
    virtual ~LabelIRInst();

    /// @brief 转换成字符串
    /// @param str 返回指令字符串
    void toString(std::string & str) override;

protected:
    /// @brief 新建Label名字，目前采用全局唯一编号，实际上函数内唯一即可
    /// \return Label名字
    static std::string createLabelName()
    {
        static uint64_t tempLabelCount = 0; // 常量计数，默认从0开始

        return ".L" + std::to_string(++tempLabelCount);
    }
};

/// @brief 二元运算指令
class BinaryIRInst : public IRInst {

public:
    /// @brief 构造函数
    /// @param _op 操作符
    /// @param _result 结果操作数
    /// @param _srcVal1 源操作数1
    /// @param _srcVal2 源操作数2
    BinaryIRInst(IRInstOperator _op, Value * _result, Value * _srcVal1, Value * _srcVal2);

    /// @brief 析构函数
    virtual ~BinaryIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

/// @brief 函数调用指令
class FuncCallIRInst : public IRInst {

public:
    /// @brief 函数名
    std::string name;

public:
    /// @brief 无参数并且没有要设置的返回值的函数调用
    /// @param name 函数名
    FuncCallIRInst(std::string _name);

    /// @brief 含有参数的函数调用
    /// @param _srcVal1 函数的实参Value
    /// @param result 保存返回值的Value
    FuncCallIRInst(std::string _name, Value * _srcVal1, Value * _result = nullptr);

    /// @brief 含有参数的函数调用
    /// @param srcVal 函数的实参Value
    /// @param result 保存返回值的Value
    FuncCallIRInst(std::string _name, std::vector<Value *> & _srcVal, Value * _result = nullptr);

    /// @brief 析构函数
    virtual ~FuncCallIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

/// @brief 赋值指令或者说复制指令
class AssignIRInst : public IRInst {

public:
    /// @brief 构造函数
    /// @param result
    /// @param srcVal1
    AssignIRInst(Value * result, Value * srcVal1);

    /// @brief 析构函数
    virtual ~AssignIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

class EntryIRInst : public IRInst {

public:
    /// @brief return语句指令
    EntryIRInst();

    /// @brief 析构函数
    virtual ~EntryIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

/// @brief return语句指令
class ExitIRInst : public IRInst {

public:
    /// @brief return语句指令
    /// @param _result 返回结果值
    ExitIRInst(Value * result = nullptr);

    /// @brief 析构函数
    virtual ~ExitIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

class GotoIRInst : public IRInst {

public:
    /// @brief return语句指令
    /// @param target 跳转目标
    GotoIRInst(IRInst * target);

    /// @brief 析构函数
    virtual ~GotoIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

class UnaryIRInst : public IRInst {
public:
    UnaryIRInst(IRInstOperator _op, Value * _result, Value * _srcVal1);

	/// @brief 析构函数
    virtual ~UnaryIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

class DeclIRInst : public IRInst {
protected:

	
public:
    DeclIRInst(IRInstOperator _op,Value * _result, Value * _srcVal1);
    DeclIRInst(IRInstOperator _op,Value * _result);


	/// @brief 析构函数
    virtual ~DeclIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

/// @brief 用于全局变量定义的语句。
class GlobalDeclIRInst : public IRInst {
protected:

	
public:
    GlobalDeclIRInst(IRInstOperator _op,Value * _result, Value * _srcVal1);
    GlobalDeclIRInst(IRInstOperator _op,Value * _result);


	/// @brief 析构函数
    virtual ~GlobalDeclIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

class IfIRInst:public IRInst
{
protected:	

public:
    IfIRInst(IRInstOperator _op,Value* cond,LabelIRInst* label_true,LabelIRInst* label_false);

    /// @brief 析构函数
    virtual ~IfIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

class BranchIRInst : public IRInst {

public:
    /// @brief return语句指令
    /// @param target 跳转目标
    BranchIRInst(IRInst * target);

    /// @brief 析构函数
    virtual ~BranchIRInst() override;

    /// @brief 转换成字符串
    void toString(std::string & str) override;
};

class CondNotZeroIRInst:public IRInst{
public:
    /// @brief  构造函数
    CondNotZeroIRInst(Value *result,Value * src1,LabelIRInst* label_true=nullptr,LabelIRInst* label_false=nullptr);

    /// @brief  析构函数
    virtual ~CondNotZeroIRInst() override;

    /// @brief 转换成字符串
    /// @param str 引用传递
    void toString(std::string & str) override;
};