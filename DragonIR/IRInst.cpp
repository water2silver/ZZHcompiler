/**
 * @file IRInst.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief IR指令类
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#include "IRInst.h"
#include "Value.h"

/// @brief 构造函数
IRInst::IRInst()
{
    // 未知指令
    op = IRInstOperator::IRINST_OP_MAX;
}

/// @brief 构造函数
/// @param op
/// @param result
/// @param srcVal1
/// @param srcVal2
IRInst::IRInst(IRInstOperator _op, Value * _result) : op(_op), dstValue(_result)
{}

/// @brief 获取指令操作码
/// @return 指令操作码
IRInstOperator IRInst::getOp()
{
    return op;
}

/// @brief 获取源操作数列表
/// @return 源操作数列表
std::vector<Value *> & IRInst::getSrc()
{
    return srcValues;
}

/// @brief 获取目的操作数，或者结果操作数
/// @return 目的操作数，或者结果操作数
Value * IRInst::getDst()
{
    return dstValue;
}

/// @brief 取得源操作数1
/// @return
Value * IRInst::getSrc1()
{
    return srcValues[0];
}

/// @brief 取得源操作数1的寄存器号
/// @return 寄存器号，可能为-1，表示在内存或立即数
int IRInst::getSrc1RegId()
{
    return srcValues[0]->regId;
}

/// @brief 取得源操作数2
/// @return
Value * IRInst::getSrc2()
{
    return srcValues[1];
}

/// @brief 取得源操作数2的寄存器号
/// @return 寄存器号，可能为-1，表示在内存或立即数
int IRInst::getSrc2RegId()
{
    return srcValues[1]->regId;
}

/// @brief 转换成字符串
/// @param str 转换后的字符串
void IRInst::toString(std::string & str)
{
    // 未知指令
    str = "Unkown IR Instruction";
}

/// @brief 构造函数
LabelIRInst::LabelIRInst() : IRInst(IRInstOperator::IRINST_OP_LABEL)
{
    // TODO 这里先设置为空字符串，实际上必须是唯一的Label名字
    // 处理方式：(1) 全局唯一 (2) 函数内唯一
    labelName = createLabelName();
}

/// @brief 构造函数
/// @param name Label名字，要确保函数内唯一
LabelIRInst::LabelIRInst(std::string name) : IRInst(IRInstOperator::IRINST_OP_LABEL)
{
    labelName = name;
}

/// @brief 析构函数
LabelIRInst::~LabelIRInst()
{}

/// @brief 转换成字符串
/// @param str 返回指令字符串
void LabelIRInst::toString(std::string & str)
{
    str = labelName + ":";
}

/// @brief 构造函数
/// @param _op 操作符
/// @param _result 结果操作数
/// @param _srcVal1 源操作数1
/// @param _srcVal2 源操作数2
BinaryIRInst::BinaryIRInst(IRInstOperator _op, Value * _result, Value * _srcVal1, Value * _srcVal2)
    : IRInst(_op, _result)
{
    srcValues.push_back(_srcVal1);
    srcValues.push_back(_srcVal2);
}

/// @brief 析构函数
BinaryIRInst::~BinaryIRInst()
{}

/// @brief 转换成字符串
/// @param str 转换后的字符串
void BinaryIRInst::toString(std::string & str)
{

    Value *src1 = srcValues[0], *src2 = srcValues[1], *result = dstValue;

    switch (op) {
        case IRInstOperator::IRINST_OP_ADD_I:

            // 加法指令，二元运算
            str = result->getName() + " = add " + src1->toString() + ", " + src2->toString();
            break;
        case IRInstOperator::IRINST_OP_SUB_I:

            // 减法指令，二元运算
            str = result->getName() + " = sub " + src1->toString() + ", " + src2->toString();
            break;
		case IRInstOperator::IRINST_OP_TIMES_I:
			
			// 乘法
			str = result->getName() + " = mul " + src1->toString() + ", " + src2->toString();
            break;
		case IRInstOperator::IRINST_OP_DIV_I:
			
			// 乘法
			str = result->getName() + " = div " + src1->toString() + ", " + src2->toString();
            break;
		case IRInstOperator::IRINST_OP_MOD_I:

			//取模
			str = result->getName() + " = mod " + src1->toString() + ", " + src2->toString();
            break;
		case IRInstOperator::IRINST_OP_GREATER_EQUAL_I:
			//>=
			str = result->getName() + " = icmp ge " + src1->toString() + ", " + src2->toString();
            break;
		case IRInstOperator::IRINST_OP_GREATER_THAN_I:
			//>
			str = result->getName() + " = icmp gt " + src1->toString() + ", " + src2->toString();
            break;
		case IRInstOperator::IRINST_OP_LESS_EQUAL_I:
			//<=
			str = result->getName() + " = icmp le " + src1->toString() + ", " + src2->toString();
            break;
		case IRInstOperator::IRINST_OP_LESS_THAN_I:
			//<
			str = result->getName() + " = icmp lt " + src1->toString() + ", " + src2->toString();
            break;
		case IRInstOperator::IRINST_OP_EQUAL_I:
			// "=="
			str = result->getName() + " = icmp eq " + src1->toString() + ", " + src2->toString();
            break;
		case IRInstOperator::IRINST_OP_NOT_EQUAL_I:
			// "!="
			str = result->getName() + " = icmp ne " + src1->toString() + ", " + src2->toString();
            break;
        default:
            // 未知指令
            IRInst::toString(str);
            break;
    }
}

/// @brief 无参数的函数调用
/// @param name 函数名
/// @param result 保存返回值的Value
FuncCallIRInst::FuncCallIRInst(std::string _name) : IRInst(IRInstOperator::IRINST_OP_FUNC_CALL, nullptr), name(_name)
{}

/// @brief 含有参数的函数调用
/// @param _srcVal1 函数的实参Value
/// @param result 保存返回值的Value
FuncCallIRInst::FuncCallIRInst(std::string _name, Value * _srcVal1, Value * _result)
    : IRInst(IRInstOperator::IRINST_OP_FUNC_CALL, _result), name(_name)
{
    srcValues.push_back(_srcVal1);
}

/// @brief 含有参数的函数调用
/// @param srcVal 函数的实参Value
/// @param result 保存返回值的Value
FuncCallIRInst::FuncCallIRInst(std::string _name, std::vector<Value *> & _srcVal, Value * _result)
    : IRInst(IRInstOperator::IRINST_OP_FUNC_CALL, _result), name(_name)
{
    // 实参拷贝
    srcValues = _srcVal;
}

/// @brief 析构函数
FuncCallIRInst::~FuncCallIRInst()
{}

/// @brief 转换成字符串显示
/// @param str 转换后的字符串
void FuncCallIRInst::toString(std::string & str)
{
    Value * result = dstValue;

    // TODO 这里应该根据函数名查找函数定义或者声明获取函数的类型
    // 这里假定所有函数返回类型要么是i32，要么是void
    // 函数参数的类型是i32

    if (!dstValue) {

        // 函数没有返回值设置
        str = "call void @" + name + "(";
    } else {

        // 函数有返回值要设置到结果变量中
        str = result->getName() + " = call i32 @" + name + "(";
    }

    for (size_t k = 0; k < srcValues.size(); ++k) {

        str += "i32 " +srcValues[k]->toString();
		if(srcValues[k]->array_info!=nullptr)
		{
            str += srcValues[k]->array_info->getDimName();
        }

        if (k != (srcValues.size() - 1)) {
            str += ", ";
        }
    }

    str += ")";
}

/// @brief 赋值IR指令
/// @param _result
/// @param _srcVal1
AssignIRInst::AssignIRInst(Value * _result, Value * _srcVal1) : IRInst(IRInstOperator::IRINST_OP_ASSIGN, _result)
{
    srcValues.push_back(_srcVal1);
}

/// @brief 析构函数
AssignIRInst::~AssignIRInst()
{}

/// @brief 转换成字符串显示
/// @param str 转换后的字符串
void AssignIRInst::toString(std::string & str)
{
    Value *src1 = srcValues[0], *result = dstValue;
	//getName 与 toString
    str = result->toString() + " = " + src1->toString();
}

/// @brief return语句指令
/// @param _result 返回结果值
ExitIRInst::ExitIRInst(Value * _result) : IRInst(IRInstOperator::IRINST_OP_EXIT, nullptr)
{
    if (_result != nullptr) {
        srcValues.push_back(_result);
    }
}

/// @brief 析构函数
ExitIRInst::~ExitIRInst()
{}

/// @brief 转换成字符串显示
/// @param str 转换后的字符串
void ExitIRInst::toString(std::string & str)
{
    if (srcValues.empty()) {
        str = "exit";
    } else {
        Value * src1 = srcValues[0];
        str = "exit " + src1->toString();
    }
}

/// @brief return语句指令
EntryIRInst::EntryIRInst() : IRInst(IRInstOperator::IRINST_OP_ENTRY, nullptr)
{}

/// @brief 析构函数
EntryIRInst::~EntryIRInst()
{}

/// @brief 转换成字符串
void EntryIRInst::toString(std::string & str)
{
    str = "entry";
}

/// @brief return语句指令
/// @param target 跳转目标
GotoIRInst::GotoIRInst(IRInst * target) : IRInst(IRInstOperator::IRINST_OP_GOTO, nullptr)
{
    // 真假目标一样，则无条件跳转
    trueInst = falseInst = target;
}

/// @brief 析构函数
GotoIRInst::~GotoIRInst()
{}

/// @brief 转换成字符串
void GotoIRInst::toString(std::string & str)
{
    str = "goto " + trueInst->getLabelName();
}

/// @brief 构造函数
/// @param _op 操作符
/// @param _result 结果操作数
/// @param _srcVal1 源操作数1
UnaryIRInst::UnaryIRInst(IRInstOperator _op, Value * _result, Value * _srcVal1):IRInst(_op,_result)
{
    srcValues.push_back(_srcVal1);
	//用于后端进行取负指令的使用。
	//TODO 应该不会有bug吧
    srcValues.push_back(new ConstValue(0));
}
/// @brief 析构函数
UnaryIRInst::~UnaryIRInst()
{}

/// @brief 转换成字符串
/// @param str 转换后的字符串
void UnaryIRInst::toString(std::string & str)
{

    Value *src1 = srcValues[0],*result = dstValue;

    switch (op) {
        case IRInstOperator::IRINST_OP_POSITIVE_I:
			//正常情况下，应该没有取正运算。			
			str = result->getName() + " = pos " + src1->toString();
            break;
		case IRInstOperator::IRINST_OP_NEGATIVE_I:
			str = result->getName() + " = neg " + src1->toString();
            break;
		case IRInstOperator::IRINST_OP_LOGICAL_NOT_I:
			// 老师讲有 "!" 出现的时候，真假出口反转。
            str = "";
            break;

        default:
            // 未知指令
            IRInst::toString(str);
            break;
    }
}

DeclIRInst::DeclIRInst(IRInstOperator _op,Value * _result, Value * _srcVal1)
	:IRInst(_op,_result)
{
    srcValues.push_back(_srcVal1);
}

DeclIRInst::DeclIRInst(IRInstOperator _op,Value * _result)
	:IRInst(_op,_result)
{

}

DeclIRInst::~DeclIRInst()
{}

void DeclIRInst::toString(std::string & str)
{
	
	if(srcValues.empty())
	{
        //str = std::string("declare ") + std::string("i32 %l") + dstValue->getName();
    }else
	{
        std::string tmp = srcValues[0]->name;
        // str = std::string("declare ") + std::string("i32 %l") + dstValue->getName() + "\r";
        str += dstValue->label_name + " = " + tmp;
    }
}
GlobalDeclIRInst::GlobalDeclIRInst(IRInstOperator _op,Value * _result, Value * _srcVal1)
	:IRInst(_op,_result)
{
    srcValues.push_back(_srcVal1);
}

GlobalDeclIRInst::GlobalDeclIRInst(IRInstOperator _op,Value * _result)
	:IRInst(_op,_result)
{

}

GlobalDeclIRInst::~GlobalDeclIRInst()
{}

void GlobalDeclIRInst::toString(std::string & str)
{
	if(srcValues.empty())
	{
        str = std::string("declare ") + std::string("i32 @") + dstValue->getName();
		if(dstValue->array_info!=nullptr)
		{
            str += dstValue->array_info->getDimName();
        }
        str += "\n";
    }else
	{
        str = std::string("declare ") + std::string("i32 @") + dstValue->getName();
		if(dstValue->array_info!=nullptr)
		{
            str += dstValue->array_info->getDimName();
        }
	 	str += " = " + srcValues[0]->toString() + "\n";
        // str += dstValue->getName() + " = " + srcValues[0]->getName();
    }
}

IfIRInst::IfIRInst(IRInstOperator _op,Value * cond,LabelIRInst* label_true,LabelIRInst* label_false):IRInst(IRInstOperator::IRINST_OP_IF)
{
    trueInst = label_true;
    falseInst = label_false;
    srcValues.push_back(cond);
}

IfIRInst::~IfIRInst(){

}

void IfIRInst::toString(std::string & str)
{
	if(srcValues.empty())
	{
        printf("[IfIRInst] empty srcValues()");
        return;
    }
    str +=std::string("bc ") + srcValues[0]->getName() + 
		  ", label " + trueInst->getLabelName() + 
		  ", label " + falseInst->getLabelName();

}

/// @brief return语句指令
/// @param target 跳转目标
BranchIRInst::BranchIRInst(IRInst * target) : IRInst(IRInstOperator::IRINST_OP_GOTO, nullptr)
{
    // 真假目标一样，则无条件跳转
    trueInst = falseInst = target;
}

/// @brief 析构函数
BranchIRInst::~BranchIRInst()
{}

/// @brief 转换成字符串
void BranchIRInst::toString(std::string & str)
{
    str = "br label " + trueInst->getLabelName();
}

//
CondNotZeroIRInst::CondNotZeroIRInst(Value *result,Value * src1,LabelIRInst* label_true,LabelIRInst* label_false):IRInst(IRInstOperator::IRINST_OP_NOT_ZERO_I,result)
{
	
    srcValues.push_back(src1);
	//便于后端统一处理。
    Value * constValue = new ConstValue(0);
    srcValues.push_back(constValue);
    trueInst = label_true;
    falseInst = label_false;
	
}
CondNotZeroIRInst::~CondNotZeroIRInst(){

};
void CondNotZeroIRInst::toString(std::string & str)
{
    Value * result = this->dstValue;
    Value * src1 = this->getSrc1();
    str = result->getName() + " = icmp ne " + src1->toString() + ", 0" ;
	// str +="bc " +result->getName()+ 
	//  	  ", label " + trueInst->getLabelName() + 
	// 	  ", label " + falseInst->getLabelName();
}
