/**
 * @file function.h
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 函数形参与函数管理的头文件
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#pragma once

#include <string>
#include <unordered_map>
#include <vector>
#include <stack>

#include "IRCode.h"
#include "Value.h"

class SymbolTable;

/// @brief 描述函数形参类
class FuncFormalParam {

public:
    /// @brief 参数名字，可为空 临时变量的编号名
    std::string name;

    /// @brief 形参类型
    ValueType type;

    /// @brief 形参变量
    Value * val = nullptr;

    /// @brief 默认整型参数
    /// @param _name 形参的名字
    FuncFormalParam(std::string _name);

    /// @brief 基本类型的参数
    /// @param _name 形参的名字
    /// @param _type 基本类型
    /// @param _val Value
    FuncFormalParam(std::string _name, BasicType _type, Value * _val = nullptr);

    /// @brief 输出字符串
    /// @param str
    std::string toString();

    /// @brief 对应变量的真实名字。
    std::string varName;

    /// @brief 设置对应变量的名字。
    /// @param _name 
    void setVarName(std::string _name);
};

class VarsStack {
public:
    std::vector<std::pair<Value *, int>> vec;
    int length = 0;

public:
	/// @brief VarsStack构造函数
    VarsStack();

    /// @brief 是否为空
    bool empty();

    /// @brief 插入value和depth元素到vec中
    /// @param v
    /// @param depth
    /// @return
    bool insert(Value * v, int depth);

    /// @brief  根据变量名在栈中自顶向下寻找变量-不考虑depth.
    /// @param name 
    /// @return 找到变量的指针。
    Value * find(std::string name);

    /// @brief 在当前作用域（depth相等情况）下，寻找变量。
    /// @param name 变量名
    /// @param depth 
    /// @return Value*
    Value * findWithDepth(std::string name, int depth);

    /// @brief 删除栈中所有当前depth的变量。
    void deleteVars(int depth);

};
// class VarsStack {
// public:
//     std::vector<std::pair<Value *, int>> vec;
//     int length = 0;
// public:
// 	/// @brief VarsStack构造函数
//     VarsStack();
//     /// @brief 是否为空
//     bool empty();
//     /// @brief 插入value和depth元素到vec中
//     bool insert(Value * v, int depth);
//     /// @brief  根据变量名在栈中自顶向下寻找变量-不考虑depth.
//     Value * find(std::string name);
//     /// @brief 在当前作用域（depth相等情况）下，寻找变量。
//     Value * findWithDepth(std::string name, int depth);
//     /// @brief 删除栈中所有当前depth的变量。
//     void deleteVars(int depth);
// };


class CFGNode {

public:
	std::string getName()
	{
        return name;
    }
	InterCode& getInterCode()
	{
        return code;
    }
	CFGNode(std::string _name):name(_name)
	{
    }
	void addInst(IRInst* inst)
	{
        code.addInst(inst);
    }

protected:
    std::string name;
    InterCode code;
};

class CFGEdge{
public:
	CFGEdge(CFGNode * node1,CFGNode* node2):preNode(node1),nextNode(node2)
	{

	}
	CFGEdge(std::string name1,std::string name2):preName(name1),nextName(name2)
	{

	}

public:
    CFGNode* preNode;
    CFGNode* nextNode;
	std::string preName;
    std::string nextName;
};


class CFGManager
{
public:
    CFGManager(){};
    ~CFGManager(){};
	bool insertNode(CFGNode * node)
	{
        this->nodeVector.push_back(node);
        this->nodeMap.emplace(node->getName(), node);
        return true;
    }

	

	bool insertEdge(std::string name1,std::string name2)
	{
        bool res = true;
        
        CFGEdge * cfgEdge = new CFGEdge(name1, name2);
        this->edgeVector.push_back(cfgEdge);
        return res;
    }

    CFGNode* findNode(std::string nodeName)
	{
        CFGNode * res = nullptr;
        if (this->nodeMap.count(nodeName) == 0) {
            res = nullptr;
            return res;
        }
        res = this->nodeMap[nodeName];
        return res;
    }

	std::vector<CFGNode*>& getNodeVector()
	{
        return this->nodeVector;
    }

	std::vector<CFGEdge*>& getEdgeVector()
	{
        return this->edgeVector;
    }

	std::unordered_map<std::string, CFGNode *>& getNodeMap()
	{
        return this->nodeMap;
    }

public: 
    std::vector<CFGNode *> nodeVector;
    std::unordered_map<std::string, CFGNode *> nodeMap;
    std::vector<CFGEdge *> edgeVector;

};

/// @brief 描述函数信息的类
class Function {

public:
    /// @brief 匿名构造函数
    Function();

    /// @brief 指定有函数类型与名字的构造函数
    /// @param name
    /// @param type
    Function(std::string _name, BasicType _type = BasicType::TYPE_INT, bool _builtin = false);

    /// @brief 指定函数名字、函数返回类型以及函数形式参数的构造函数
    /// @param _name
    /// @param _type
    /// @param _param
    Function(std::string _name, BasicType _type, FuncFormalParam _param, bool _builtin = false);

    void setParams(std::vector<Value *> &values);

    /// @brief  Function内部的CFG生成。
    void OutputCFG();

    /// @brief 取得函数名字
    /// @return 函数名字
    std::string & getName();

    /// @brief 获取函数返回类型
    /// @return 返回类型
    ValueType & getReturnType();

    /// @brief 获取函数的形参列表
    /// @return 形参列表
    std::vector<FuncFormalParam> & getParams();

    /// @brief 获取函数内的IR指令代码
    /// @return IR指令代码
    InterCode & getInterCode();

    /// @brief 判断该函数是否是内置函数
    /// @return true: 内置函数，false：用户自定义
    bool isBuiltin();

    /// @brief 设置函数是否是内置或用户自定义
    /// @param _builtin true: 内置函数 false: 用户自定义函数
    void setBuiltin(bool _builtin);

    /// @brief 函数指令信息输出
    /// @param str 函数指令
    void toString(std::string & str);

    /// @brief 获取下一个Label名字
    /// @return 下一个Label名字
    std::string getNextLabelName();

    /// @brief 获取下一个临时变量名字
    /// @return 下一个临时变量名字
    std::string getNextTempVarName();

    /// @brief 设置函数出口指令
    /// @param inst 出口Label指令
    void setExitLabel(IRInst * inst);

    /// @brief 获取函数出口指令
    /// @return 出口Label指令
    IRInst * getExitLabel();

    /// @brief 设置函数返回值变量
    /// @param val 返回值变量，要求必须是局部变量，不能是临时变量
    void setReturnValue(Value * val);

    /// @brief 获取函数返回值变量
    /// @return 返回值变量
    Value * getReturnValue();

    /// @brief 从函数内的局部变量中删除
    /// @param val 变量Value
    void deleteVarValue(Value * val);

    /// @brief 获取函数内变量清单
    /// @return 函数内变量清单
    std::vector<Value *> & getVarValues()
    {
        return varsVector;
    }

    /// @brief 获取最大栈帧深度
    /// @return 栈帧深度
    int getMaxDep();

    /// @brief 设置最大栈帧深度
    /// @param dep 栈帧深度
    void setMaxDep(int dep);

    /// @brief 获取函数调用栈空间大小而引入的栈空间大小
    /// @return 栈空间大小
    int getExtraStackSize();

    /// @brief 设置函数调用栈空间大小而引入的栈空间大小
    /// @param size 栈空间大小
    void setExtraStackSize(int size);

    /// @brief 获取函数调用参数个数的最大值
    /// @return 函数调用参数个数的最大值
    int getMaxFuncCallArgCnt();

    /// @brief 设置函数调用参数个数的最大值
    /// @param count 函数调用参数个数的最大值
    void setMaxFuncCallArgCnt(int count);

    /// @brief 函数内是否存在函数调用
    bool getExistFuncCall();

    /// @brief 设置函数是否存在函数调用
    /// @param exist true: 存在 false: 不存在
    void setExistFuncCall(bool exist);

    /// @brief 获取本函数需要保护的寄存器
    /// @return 要保护的寄存器
    std::vector<int32_t> & getProtectedReg();

    /// @brief 获取本函数需要保护的寄存器字符串
    /// @return 要保护的寄存器
    std::string & getProtectedRegStr();

    /// 根据变量名取得当前符号的值。若变量不存在，则说明变量之前没有定值，则创建一个未知类型的值，初值为0
    /// \param name 变量名
    /// \param create true: 不存在返回nullptr；false：不存在则不创建
    /// \return 变量对应的值
    Value * findValue(std::string name, bool create = false);

    /// @brief 按照name和depth进行变量查找。该函数主要用于变量定义。
    /// @param name 
    /// @param depth 
    /// @return 
    Value * findValueWithDepth(std::string name, int depth);

    /// @brief 新建变量型Value
    /// @param name 变量ID
    /// @param type 变量类型
    Value * newVarValue(std::string name, BasicType type = BasicType::TYPE_INT);

    /// @brief 新建变量型Value
    /// @param type 变量类型
    Value * newVarValue(BasicType type);

    /// @brief 新建一个临时型的Value，并加入到符号表，用于后续释放空间
    /// \param type 变量类型
    /// \return 临时变量Value
    Value * newTempValue(BasicType type);

    /// @brief 设置符号表，以便全局符号查找
    void setSymtab(SymbolTable * _symtab);

    /// @brief  删除varsStack当前depth的变量
    /// @param depth 
    void stackPop(int depth);

	/// @brief CFG节点，边管理类
    CFGManager cfgManager;

protected:
    /// @brief Value插入到符号表中
    /// @param val Value信息
    void insertValue(Value * val);

private:
    /// @brief 函数名
    std::string name;

    /// @brief 函数返回类型
    ValueType returnType;

    /// @brief 形式参数列表
    std::vector<FuncFormalParam> params;

    // @brief 是否是内置函数
    bool builtIn = false;

    /// @brief 线性IR指令块，可包含多条IR指令
    InterCode code;

    /// @brief 全局符号表
    SymbolTable * symtab = nullptr;

    /// @brief 下一个可用的临时变量编号，用于输出中间代码用
    int32_t nextTempVarNo = 0;

    /// @brief 下一个可用的Label编号，用户输出中间代表用
    int32_t nextLabelNo = 0;

    /// @brief 函数内变量的映射表，提高查询的效率
    std::unordered_map<std::string, Value *> varsMap;

    /// @brief 函数内变量的向量表
    std::vector<Value *> varsVector;

	/// @brief 局部变量栈，目标是取缔varsMap
    VarsStack varsStack;

    /// @brief 临时变量的列表
    std::vector<Value *> tempVector;

    /// @brief 函数出口Label指令
    IRInst * exitLabel = nullptr;

    /// @brief 函数返回值变量，不能是临时变量，必须是局部变量
    Value * returnValue = nullptr;

    /// @brief 由于局部变量、前4个形参需站内空间分配而导致的栈帧大小
    int maxDepth = 0;

    /// @brief 由于函数调用需要栈传递而导致的栈空间大小
    int maxExtraStackSize = 0;

    /// @brief 是否存在函数调用
    bool funcCallExist = false;

    /// @brief 本函数内函数调用的参数个数最大值
    int maxFuncCallArgCnt = 0;

    /// @brief 函数是否需要重定位，栈帧发生变化
    bool relocated = false;

    /// @brief 被保护的寄存器编号
    std::vector<int32_t> protectedRegs;

    /// @brief 被保护寄存器字符串
    std::string protectedRegStr;
public:
	/// @brief break语句label的栈
    std::stack<LabelIRInst *> breakLabelStack;

	/// @brief continue 语句的label栈。
    std::stack<LabelIRInst *> continueLabelStack;

};



