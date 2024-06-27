﻿/**
 * @file function.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 函数形参与函数管理
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */

#include <algorithm>
#include <string>
#include "Function.h"
#include "SymbolTable.h"

/// @brief 默认整型参数
/// @param _name 形参的名字
FuncFormalParam::FuncFormalParam(std::string _name) : name(_name)
{
    type.type = BasicType::TYPE_INT;
}

/// @brief 基本类型的参数
/// @param _name 形参的名字
/// @param _type 基本类型
/// @param _val Value
FuncFormalParam::FuncFormalParam(std::string _name, BasicType _type, Value * _val) : name(_name), type(_type), val(_val)
{}

/// @brief 设置对应变量的名字。
/// @param _name 
void FuncFormalParam::setVarName(std::string _name)
{
    this->varName = _name;
}

/// @brief 函数形参转字符串输出
/// @return
std::string FuncFormalParam::toString()
{
    std::string typeName;
    typeName = type.toString();
    std::string str= typeName + " " + name;
	if(this->val->array_info!=nullptr)
	{
        str += this->val->array_info->getDimName();
    }
    // 类型名 空格 形参参数名
    return str;
}

/// @brief 匿名构造函数
Function::Function()
{
    returnType.type = BasicType::TYPE_VOID;
}

/// @brief 指定有函数类型与名字的构造函数
/// @param _name
/// @param _type
/// @param _builtin
Function::Function(std::string _name, BasicType _type, bool _builtin) : name(_name), builtIn(_builtin)
{
    returnType.type = _type;
}

/// @brief 指定函数名字、函数返回类型以及函数形式参数的构造函数
/// @param _name
/// @param _type
/// @param _param
Function::Function(std::string _name, BasicType _type, FuncFormalParam _param, bool _builtin)
    : name(_name), builtIn(_builtin)
{
    returnType.type = _type;
    params.emplace_back(_param);
}

/// @brief 取得函数名字
/// @return 函数名字
std::string & Function::getName()
{
    return name;
}
/// @brief 获取函数返回类型
/// @return 返回类型
ValueType & Function::getReturnType()
{
    return returnType;
}

/// @brief 获取函数的形参列表
/// @return 形参列表
std::vector<FuncFormalParam> & Function::getParams()
{
    return params;
}

/// @brief 获取函数内的IR指令代码
/// @return IR指令代码
InterCode & Function::getInterCode()
{
    return code;
}
void Function::setParams(std::vector<Value *> &values)
{
	for (int i = 0; i < values.size();i++)
	{
		VarValue * tmp = new VarValue(values[i]->getName(), values[i]->type.type);
		tmp->intVal = values[i]->intVal;
		tmp->realVal = values[i]->realVal;
		// params[i] = FuncFormalParam(values[i]->getName(), values[i]->type.type, tmp);
		params[i].val = tmp;
		params[i].type = values[i]->type;
	}
    return;
}

/// @brief 判断该函数是否是内置函数
/// @return true: 内置函数，false：用户自定义
bool Function::isBuiltin()
{
    return builtIn;
}

/// @brief 设置函数是否是内置或用户自定义
/// @param _builtin true: 内置函数 false: 用户自定义函数
void Function::setBuiltin(bool _builtin)
{
    builtIn = _builtin;
}

/// @brief 函数指令信息输出
/// @param str 函数指令
void Function::toString(std::string & str)
{
    if (builtIn) {
        // 内置函数则什么都不输出
        return;
    }

    // 输出函数头
    str = std::string("define ")+returnType.toString() + " @" + name + "(";

    bool firstParam = false;
    for (auto & param: params) {

        if (!firstParam) {
            firstParam = true;
        } else {
            str += ", ";
        }

        std::string param_str = param.toString();

        str += param_str;
    }

    str += ")";

    str += " {\n";
	//
	//局部变量声明部分
	for(auto &value : varsVector)
	{
		if(value->isLocalVar()) 
		{
			str += "\t" + std::string("declare i32 ") + value->label_name;
			if(value->array_info!=nullptr)
			{
                str += value->array_info->getDimName();
            }

            if(!value->name.empty())
			{
				str += std::string(" ; variable: ") + value->name;
			}
			str += std::string("\n");
        }
    }
    //临时变量声明部分
	for(auto &value : varsVector)
	{
		if(value->isTemp()) 
		{
            std::string valueType;
            if (value->type.type == BasicType::TYPE_BOOL) 
			{
                valueType = std::string("i1");
            } else if (value->type.type == BasicType::TYPE_INT) 
			{
                valueType = std::string("i32");
			}else if(value->type.type == BasicType::TYPE_POINTER)
			{
				if(value->array_info!=nullptr)
				{
                	valueType = std::string("i32");

				}else
				{
                	valueType = std::string("i32*");
				}
			}
            str += "\t" + std::string("declare ") + valueType + " " + value->name;
			if(value->array_info!=nullptr)
			{
                str += value->array_info->getDimName();
            }
            str += std::string("\n");
		}
	}
    // 遍历所有的线性IR指令，文本输出
    for (auto & inst: code.getInsts()) {

		//使用vector<string> 是不是会更好？
        std::string instStr;
        inst->toString(instStr);

        if (!instStr.empty()) {

            // Label指令不加Tab键
            if (inst->getOp() == IRInstOperator::IRINST_OP_LABEL) {
                str += instStr + "\n";
            } else {
                str += "\t" + instStr + "\n";
            }
        }
    }

    // 输出函数尾部
    str += "}\n";
}

/// @brief 获取下一个Label名字
/// @return 下一个Label名字
std::string Function::getNextLabelName()
{
    std::string name = std::to_string(nextLabelNo);
    nextLabelNo++;
    return name;
}

/// @brief 获取下一个临时变量名字
/// @return 下一个临时变量名字
std::string Function::getNextTempVarName()
{
    std::string name = std::to_string(nextTempVarNo);
    nextTempVarNo++;
    return name;
}

/// @brief 设置函数出口指令
/// @param inst 出口Label指令
void Function::setExitLabel(IRInst * inst)
{
    exitLabel = inst;
}

/// @brief 获取函数出口指令
/// @return 出口Label指令
IRInst * Function::getExitLabel()
{
    return exitLabel;
}

/// @brief 设置函数返回值变量
/// @param val 返回值变量，要求必须是局部变量，不能是临时变量
void Function::setReturnValue(Value * val)
{
    returnValue = val;
}

/// @brief 获取函数返回值变量
/// @return 返回值变量
Value * Function::getReturnValue()
{
    return returnValue;
}

/// @brief 从函数内的局部变量中删除
/// @param val 变量Value
void Function::deleteVarValue(Value * val)
{
    auto pIter = varsMap.find(val->getName());
    if (pIter != varsMap.end()) {
        varsMap.erase(pIter);
    }

    auto pIter2 = std::find(varsVector.begin(), varsVector.end(), val);
    varsVector.erase(pIter2);
}

/// @brief 获取最大栈帧深度
/// @return 栈帧深度
int Function::getMaxDep()
{
    return maxDepth;
}

/// @brief 设置最大栈帧深度
/// @param dep 栈帧深度
void Function::setMaxDep(int dep)
{
    maxDepth = dep;

    // 设置函数栈帧被重定位标记，用于生成不同的栈帧保护代码
    relocated = true;
}

/// @brief 获取本函数需要保护的寄存器
/// @return 要保护的寄存器
std::vector<int32_t> & Function::getProtectedReg()
{
    return protectedRegs;
}

/// @brief 获取本函数需要保护的寄存器字符串
/// @return 要保护的寄存器
std::string & Function::getProtectedRegStr()
{
    return protectedRegStr;
}

/// @brief 获取函数调用参数个数的最大值
/// @return 函数调用参数个数的最大值
int Function::getMaxFuncCallArgCnt()
{
    return maxFuncCallArgCnt;
}

/// @brief 设置函数调用参数个数的最大值
/// @param count 函数调用参数个数的最大值
void Function::setMaxFuncCallArgCnt(int count)
{
    maxFuncCallArgCnt = count;
}

/// @brief 函数内是否存在函数调用
/// @return 是否存在函调用
bool Function::getExistFuncCall()
{
    return funcCallExist;
}

/// @brief 设置函数是否存在函数调用
/// @param exist true: 存在 false: 不存在
void Function::setExistFuncCall(bool exist)
{
    funcCallExist = exist;
}

/// @brief 新建变量型Value
/// @param name 变量ID
/// @param type 变量类型
Value * Function::newVarValue(std::string name, BasicType type)
{
    Value * retVal;

    // retVal = findValue(name);
    // if (retVal == nullptr) {
    //     retVal = new VarValue(name, type);
    //     insertValue(retVal);
    // } else {
    //     // 已存在的Value，返回失败
    //     retVal = nullptr;
    // }
	//使用newVarValue前需要手动检查是否存在重名变量。
	retVal = new VarValue(name, type);
	insertValue(retVal);

    return retVal;
}

/// @brief Value插入到符号表中
/// @param name Value的名称
/// @param val Value信息
void Function::insertValue(Value * val)
{
    varsMap.emplace(val->name, val);
    varsVector.push_back(val);
    this->varsStack.insert(val, symtab->getBlockDepth());
}
/// @brief  删除varsStack当前depth的变量
/// @param depth 
void Function::stackPop(int depth)
{
	this->varsStack.deleteVars(depth);
}

/// @brief 新建一个匿名变量型的Value，并加入到符号表，用于后续释放空间
/// \param type 类型
/// \return 变量Value
Value * Function::newVarValue(BasicType type)
{
    // 创建匿名变量，肯定唯一，直接插入
    Value * var = new VarValue(type);

    insertValue(var);

    return var;
}

/// 新建一个临时型的Value，并加入到符号表，用于后续释放空间
/// \param intVal 整数值
/// \return 常量Value
Value * Function::newTempValue(BasicType type)
{
    // 肯定唯一存在，直接插入即可
    Value * temp = new TempValue(type);

    insertValue(temp);

    return temp;
}

/// 根据变量名取得当前符号的值。若变量不存在，则说明变量之前没有定值，则创建一个未知类型的值，初值为0
/// \param name 变量名
/// \param create true: 不存在返回nullptr；false：不存在则不创建
/// \return 变量对应的值
Value * Function::findValue(std::string name, bool create)
{
    Value * temp = nullptr;
    // std::unordered_map<std::string, Value *>::iterator pIter;
    // 这里只是针对函数内的变量进行检查，如果要考虑全局变量，则需要继续检查symtab的符号表
	// pIter = varsMap.find(name);
    // if (pIter != varsMap.end()) {

    //     // 如果考虑作用域、存在重名的时候，需要从varsVector逆序检查到底用那个Value

    //     temp = pIter->second;
    // }
	//通过varsStack查找。
    temp = this->varsStack.find(name);

    // 没有找到，并且指定了全局符号表，则继续查找
    if ((!temp) && symtab) {

        temp = symtab->findValue(name, false);
    }

    // 变量名没有找到
    if ((!temp) && create) {
        temp = newVarValue(name);
    }

    return temp;
}

/// @brief 按照name和depth进行变量查找。该函数主要用于变量定义。
/// @param name 
/// @param depth 
/// @return 
Value * Function::findValueWithDepth(std::string name, int depth)
{
    Value * ret;
    ret = this->varsStack.findWithDepth(name, depth);
    return ret;
}

/// @brief 设置符号表，以便全局符号查找
void Function::setSymtab(SymbolTable * _symtab)
{
    symtab = _symtab;
}

VarsStack::VarsStack()
{
    this->length = 0;
}

bool VarsStack::empty()
{
	return this->length == 0;
}

bool VarsStack::insert(Value* v,int depth)
{
	vec.emplace_back(v,depth);
	length++;
	return true;
}

Value* VarsStack::find(std::string name)
{
	Value * ret = nullptr;
	if(this->length==0)
	{
		return ret;
	}
	int n = this->length;
	while(n--)
	{
		if(name==this->vec[n].first->getName())
		{
			ret = this->vec[n].first;
			break;
		}
	}
	return ret;
}

void VarsStack::deleteVars(int depth)
{
	if(this->empty())
	{
		return;
	}
	int n = this->length;
	while(n--)
	{
		if(this->vec[n].second==depth)
		{
			this->vec.pop_back();
			this->length--;
		}else
		{
			break;
		}
	}
	
}

/// @brief 在当前作用域（depth相等情况）下，寻找变量。
/// @param name 变量名
/// @param depth 
/// @return Value*
Value * VarsStack::findWithDepth(std::string name, int depth)
{
	Value * ret = nullptr;
	if(this->length==0)
	{
		return ret;
	}
	int n = this->length;
	while(n--)
	{	
		if(this->vec[n].second != depth)
		{
            break;
        }
        if(name==this->vec[n].first->getName())
		{
			ret = this->vec[n].first;
			break;
		}
	}
	return ret;
}

/// @brief  Function内部的CFG生成。
void Function::OutputCFG()
{
	if(name =="getint"||name=="getch"||name=="getarray"||
	   name=="putint"|| name=="putch" || name =="putarray" ||
	   name =="putstr")
	{
        return;
    }
    // std::string filePath = std::string("result/cfg-" + this->getName() + ".png");

	//生成Node与Edge。
	std::string labelName;
	CFGNode * cfgNode;
	for (auto & inst: code.getInsts()) {
        
        if (inst->getOp() == IRInstOperator::IRINST_OP_LABEL) {

            //else 后面的block没有跳转语句
			if((!labelName.empty())&&cfgNode!=nullptr)
			{
                cfgManager.insertEdge(labelName, inst->getLabelName());
            }

            labelName = inst->getLabelName();
           	cfgNode = new CFGNode(labelName);

            cfgNode->addInst(inst);
            cfgManager.insertNode(cfgNode);
            //
        } else if (inst->getOp() == IRInstOperator::IRINST_OP_IF) {
            std::string labelname1 = inst->getTrueLabelName();
            std::string labelname2 = inst->getFalseLabelName();
            cfgManager.insertEdge(cfgNode->getName(), labelname1);
            cfgManager.insertEdge(cfgNode->getName(), labelname2);
            cfgNode->addInst(inst);

            cfgNode = nullptr;

        } else if (inst->getOp() == IRInstOperator::IRINST_OP_GOTO) {
            std::string aimNodeName = inst->getTrueLabelName();
            cfgManager.insertEdge(cfgNode->getName(), aimNodeName);
        	cfgNode->addInst(inst);
            cfgNode = nullptr;
        } else {
            cfgNode->addInst(inst);
        }
    }

}