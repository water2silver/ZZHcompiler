﻿/**
 * @file IRGenerator.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief AST遍历产生线性IR
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */

#include "IRGenerator.h"
#include "IRCode.h"

 /// @brief 构造函数
 /// @param _root AST的根
 /// @param _symtab 符号表
IRGenerator::IRGenerator(ast_node * _root, SymbolTable * _symtab) : root(_root), symtab(_symtab)
{
    /* 叶子节点 */
    ast2ir_handlers[ast_operator_type::AST_OP_LEAF_LITERAL_UINT] = &IRGenerator::ir_leaf_node_uint;
    ast2ir_handlers[ast_operator_type::AST_OP_LEAF_LITERAL_FLOAT] = &IRGenerator::ir_leaf_node_float;
    ast2ir_handlers[ast_operator_type::AST_OP_LEAF_VAR_ID] = &IRGenerator::ir_leaf_node_var_id;

    /* 表达式运算， 加减 */
    ast2ir_handlers[ast_operator_type::AST_OP_SUB] = &IRGenerator::ir_sub;
    ast2ir_handlers[ast_operator_type::AST_OP_ADD] = &IRGenerator::ir_add;

    /* 语句 */
    ast2ir_handlers[ast_operator_type::AST_OP_EXPR] = &IRGenerator::ir_expr_noshow;
    ast2ir_handlers[ast_operator_type::AST_OP_EXPR_SHOW] = &IRGenerator::ir_expr_show;
    ast2ir_handlers[ast_operator_type::AST_OP_ASSIGN] = &IRGenerator::ir_assign;
    ast2ir_handlers[ast_operator_type::AST_OP_RETURN_STATEMENT] = &IRGenerator::ir_return;

    /* 函数调用 */
    ast2ir_handlers[ast_operator_type::AST_OP_FUNC_CALL] = &IRGenerator::ir_function_call;

    /* 函数定义 */
    ast2ir_handlers[ast_operator_type::AST_OP_FUNC_DEF] = &IRGenerator::ir_function_define;
    ast2ir_handlers[ast_operator_type::AST_OP_FUNC_FORMAL_PARAMS] = &IRGenerator::ir_function_formal_params;

    /* 语句块 */
    ast2ir_handlers[ast_operator_type::AST_OP_BLOCK] = &IRGenerator::ir_block;

    /* 编译单元 */
    ast2ir_handlers[ast_operator_type::AST_OP_COMPILE_UNIT] = &IRGenerator::ir_compile_unit;
}

/// @brief 析构函数
IRGenerator::~IRGenerator()
{

}

/// @brief 编译单元AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_compile_unit(ast_node * node)
{
    // 新建main函数并默认设置当前函数为main函数
    symtab->mainFunc = symtab->newFunction("main", BasicType::TYPE_INT);
    symtab->currentFunc = symtab->mainFunc;

    std::vector<ast_node *>::iterator pIter;
    for (pIter = node->sons.begin(); pIter != node->sons.end(); ++pIter) {

        // 遍历编译单元，要么是函数定义，要么是语句
        ast_node * temp = ir_visit_ast_node(*pIter);
        if (!temp) {
            return false;
        }

        node->blockInsts.addInst(temp->blockInsts);
    }

    // 获取函数的IR代码列表，用于后面追加指令用，注意这里用的是引用传值
    InterCode & irCode = symtab->currentFunc->getInterCode();

    // 创建并加入Entry入口指令
    irCode.addInst(new EntryIRInst());

    // 创建出口指令并不加入出口指令，等函数内的指令处理完毕后加入出口指令
    IRInst * exitLabelInst = new LabelIRInst();
    symtab->currentFunc->setExitLabel(exitLabelInst);

    // 新建一个Value，用于保存函数的返回值，如果没有返回值可不用申请，
    // 目前不需要
#if 0
    Value * retValue = symtab->currentFunc->newVarValue(BasicType::TYPE_INT);
    symtab->currentFunc->setReturnValue(retValue);
#endif

    // 除了函数定义的指令外都加入到main函数的指令当中
    irCode.addInst(node->blockInsts);

    // 添加函数出口Label指令，主要用于return语句跳转到这里进行函数的退出
    irCode.addInst(exitLabelInst);

    // 尾部追加一个return 0指令，使得main函数的格式正确
    irCode.addInst(new ExitIRInst(new ConstValue(0)));

    // main函数移动到列表的尾部，以便后续简便处理
    symtab->moveFunctionEnd(symtab->mainFunc);

    // 设置成空，使得后续访问该变量出错。
    symtab->currentFunc = nullptr;

    return true;
}

/// @brief 函数定义AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_function_define(ast_node * node)
{
    // 创建一个函数，用于当前函数处理
    if (symtab->currentFunc != symtab->mainFunc) {
        // 函数中嵌套定义函数，这是不允许的，错误退出
        return false;
    }

    // 创建一个新的函数定义，函数的返回类型设置为VOID，待定，必须等return时才能确定，目前可以是VOID或者INT类型
    symtab->currentFunc = new Function(node->name, BasicType::TYPE_VOID);
    bool reuslt = symtab->insertFunction(symtab->currentFunc);
    if (!reuslt) {
        // 清理资源
        delete symtab->currentFunc;

        // 函数已经定义过了，不能重复定义，出错返回。
        return false;
    }

    // 获取函数的IR代码列表，用于后面追加指令用，注意这里用的是引用传值
    InterCode & irCode = symtab->currentFunc->getInterCode();

    // 创建并加入Entry入口指令
    irCode.addInst(new EntryIRInst());

    // 创建出口指令并不加入出口指令，等函数内的指令处理完毕后加入出口指令
    IRInst * exitLabelInst = new LabelIRInst();
    symtab->currentFunc->setExitLabel(exitLabelInst);

    // 新建一个Value，用于保存函数的返回值，如果没有返回值可不用申请，
    // 目前未知，先创建一个，不用后续可释放
    Value * retValue = symtab->currentFunc->newVarValue(BasicType::TYPE_INT);
    symtab->currentFunc->setReturnValue(retValue);

    std::vector<ast_node *>::iterator pIter;
    for (pIter = node->sons.begin(); pIter != node->sons.end(); ++pIter) {

        // 遍历函数定义，孩子要么是形式参数，要么是block
        ast_node * temp = ir_visit_ast_node(*pIter);
        if (!temp) {
            return false;
        }

        node->blockInsts.addInst(temp->blockInsts);
    }

    // 归约上来的所有指令都加入到当前函数中
    irCode.addInst(node->blockInsts);

    // 添加函数出口Label指令，主要用于return语句跳转到这里进行函数的退出
    irCode.addInst(exitLabelInst);

    // 检查函数是否有返回值类型，则需要设置返回值，否则不设置
    if (symtab->currentFunc->getReturnType().type != BasicType::TYPE_VOID) {
        // 函数出口指令
        irCode.addInst(new ExitIRInst(retValue));
    } else {
        // 清理资源恢复原状
        symtab->currentFunc->deleteVarValue(retValue);
        symtab->currentFunc->setReturnValue(nullptr);
        delete retValue;

        // 函数出口指令
        irCode.addInst(new ExitIRInst());
    }

    // 恢复成指向main函数
    symtab->currentFunc = symtab->mainFunc;

    return true;
}

/// @brief 形式参数AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败    
bool IRGenerator::ir_function_formal_params(ast_node * node)
{
    // 获取当前要保存函数的形式参数清单
    auto & params = symtab->currentFunc->getParams();

    // 遍历形式参数列表，孩子是叶子节点
    for (auto son : node->sons) {

        // 创建变量，默认整型
        Value * var = symtab->currentFunc->newVarValue(son->name, BasicType::TYPE_INT);

        // 默认是整数类型
        params.push_back({ son->name, BasicType::TYPE_INT, var });
    }

    return true;
}

/// @brief 函数调用AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_function_call(ast_node * node)
{
    InterCode paramsInsts;
    std::vector<Value *> realParams;

    // 根据函数名查找函数，看是否存在。若不存在则出错
    // 这里约定函数必须先定义后使用
    auto pFunction = symtab->findFunction(node->name);
    if (nullptr == pFunction) {
        // TODO 这里输出错误信息
        return false;
    }

    // 设置存在函数调用
    symtab->currentFunc->setExistFuncCall(true);

    // 如果没有孩子，也认为是没有参数
    if (node->sons.size() != 0) {

        // 只有一个节点，实际参数列表
        auto paramsNode = node->sons[0];

        int argsCount = paramsNode->sons.size();

        // 设置最大函数调用参数个数
        if (argsCount > symtab->currentFunc->getMaxFuncCallArgCnt()) {
            symtab->currentFunc->setMaxFuncCallArgCnt(argsCount);
        }

        // 遍历参数列表，孩子是表达式
            // 这里自左往右计算表达式
        for (auto son : paramsNode->sons) {

            // 遍历Block的每个语句，进行显示或者运算
            ast_node * temp = ir_visit_ast_node(son);
            if (!temp) {
                return false;
            }

            realParams.push_back(temp->val);
            node->blockInsts.addInst(temp->blockInsts);
        }
    }

    // 创建临时变量，用于保存函数调用的结果
    Value * resultVal = nullptr;

    // 返回调用有返回值，则需要分配临时变量
    if (pFunction->getReturnType().type == BasicType::TYPE_INT) {
        resultVal = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
    }

    // 创建函数调用指令
    node->blockInsts.addInst(
            new FuncCallIRInst(node->name, realParams, resultVal));

    // 函数调用结果保存到node中，用于外部使用
    node->val = resultVal;

    return true;
}

/// @brief 语句块（含函数体）AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败    
bool IRGenerator::ir_block(ast_node * node)
{
    std::vector<ast_node *>::iterator pIter;
    for (pIter = node->sons.begin(); pIter != node->sons.end(); ++pIter) {

        // 遍历Block的每个语句，进行显示或者运算
        ast_node * temp = ir_visit_ast_node(*pIter);
        if (!temp) {
            return false;
        }

        node->blockInsts.addInst(temp->blockInsts);
    }

    return true;
}

/// @brief 表达式语句ST节点翻译成线性中间IR的共同函数
/// @param node AST节点
/// @param show 是否显示值，true：显示，false：不显示
/// @return 翻译是否成功，true：成功，false：失败    
bool IRGenerator::ir_show_internal(ast_node * node, bool show)
{
    // TODO real number print

    ast_node * src1_node = node->sons[0];

    ast_node * result = ir_visit_ast_node(src1_node);
    if (!result) {
        // 解析错误
        return false;
    }

    node->blockInsts.addInst(result->blockInsts);

    if (show && (result->val != nullptr)) {

        node->blockInsts.addInst(
            new FuncCallIRInst("putint", result->val));
    }

    node->val = nullptr;

    return true;
}

/// @brief 不显示表达式AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败    
bool IRGenerator::ir_expr_noshow(ast_node * node)
{
    return ir_show_internal(node, false);
}

/// @brief 显示表达式AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败   
bool IRGenerator::ir_expr_show(ast_node * node)
{
    return ir_show_internal(node, true);
}

/// @brief 整数加法AST节点翻译成线性中间IR
    /// @param node AST节点
    /// @return 翻译是否成功，true：成功，false：失败   
bool IRGenerator::ir_add(ast_node * node)
{
    // TODO real number add

    ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 加法节点，左结合，先计算左节点，后计算右节点

    // 加法的左边操作数
    ast_node * left = ir_visit_ast_node(src1_node);
    if (!left) {
        // 某个变量没有定值
        return false;
    }

    // 加法的右边操作数
    ast_node * right = ir_visit_ast_node(src2_node);
    if (!right) {
        // 某个变量没有定值
        return false;
    }

    // 这里只处理整型的数据，如需支持实数，则需要针对类型进行处理

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(
        new BinaryIRInst(IRInstOperator::IRINST_OP_ADD_I, resultValue, left->val, right->val));
    node->val = resultValue;

    return true;
}

/// @brief 整数减法AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败  
bool IRGenerator::ir_sub(ast_node * node)
{
    // TODO real number add

    ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 加法节点，左结合，先计算左节点，后计算右节点

    // 加法的左边操作数
    ast_node * left = ir_visit_ast_node(src1_node);
    if (!left) {
        // 某个变量没有定值
        return false;
    }

    // 加法的右边操作数
    ast_node * right = ir_visit_ast_node(src2_node);
    if (!right) {
        // 某个变量没有定值
        return false;
    }

    // 这里只处理整型的数据，如需支持实数，则需要针对类型进行处理

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(
        new BinaryIRInst(IRInstOperator::IRINST_OP_SUB_I, resultValue, left->val, right->val));
    node->val = resultValue;

    return true;
}

/// @brief 赋值AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_assign(ast_node * node)
{
    // TODO real number add

    ast_node * son1_node = node->sons[0];
    ast_node * son2_node = node->sons[1];

    // 赋值节点，自右往左运算

    // 赋值运算符的左侧操作数
    ast_node * left = ir_visit_ast_node(son1_node);
    if (!left) {
        // 某个变量没有定值
        // 这里缺省设置变量不存在则创建，因此这里不会错误
        return false;
    }

    // 赋值运算符的右侧操作数
    ast_node * right = ir_visit_ast_node(son2_node);
    if (!right) {
        // 某个变量没有定值
        return false;
    }

    // 这里只处理整型的数据，如需支持实数，则需要针对类型进行处理

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(
        new AssignIRInst(left->val, right->val));

    left->val->type = right->val->type;
    node->val = left->val;

    return true;
}

/// @brief return节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败    
bool IRGenerator::ir_return(ast_node * node)
{
    ast_node * right = nullptr;

    // return语句可能没有没有表达式，也可能有，因此这里必须进行区分判断
    if (0 != node->sons.size()) {

        ast_node * son1_node = node->sons[0];

        // 返回的表达式的指令保存在right节点中
        right = ir_visit_ast_node(son1_node);
        if (!right) {
            // 某个变量没有定值
            return false;
        }
    }

    // 这里只处理整型的数据，如需支持实数，则需要针对类型进行处理

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(right->blockInsts);

    // 返回值赋值到函数返回值变量上，然后跳转到函数的尾部
    node->blockInsts.addInst(new AssignIRInst(
        symtab->currentFunc->getReturnValue(), right->val));

    // 跳转到函数的尾部出口指令上
    node->blockInsts.addInst(new GotoIRInst(symtab->currentFunc->getExitLabel()));

    node->val = right->val;

    // 这里设置返回值类型
    ValueType & returnType = symtab->currentFunc->getReturnType();
    if (returnType.type == BasicType::TYPE_VOID) {
        // 设置类型
        returnType.type = right->val->type.type;
    } else if (returnType.type != right->val->type.type) {
        // 两者类型不一致，要出错显示
        // 或者隐式转换成更高的类型
        // TODO 这里目前什么都不做
    }

    return true;
}

/// @brief 标识符叶子节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败    
bool IRGenerator::ir_leaf_node_var_id(ast_node * node)
{
    Value * val;

    // 新建一个ID型Value

    // 变量，则需要在符号表中查找对应的值
    // 若变量之前没有有定值，则采用默认的值为0

    val = symtab->currentFunc->findValue(node->name, false);
    if (!val) {

        // 变量不存在，则创建一个变量
        val = symtab->currentFunc->newVarValue(node->name);
    }

    node->val = val;

    return true;
}

/// @brief 无符号整数字面量叶子节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败   
bool IRGenerator::ir_leaf_node_uint(ast_node * node)
{
    Value * val;

    // 新建一个整数常量Value
    val = symtab->newConstValue((int32_t)node->integer_val);

    node->val = val;

    return true;
}

/// @brief float数字面量叶子节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败   
bool IRGenerator::ir_leaf_node_float(ast_node * node)
{
    Value * val = nullptr;

    // 新建一个实数型常量Value
    val = symtab->newConstValue(node->float_val);

    node->val = val;

    return true;
}

/// @brief 未知节点类型的节点处理
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败   
bool IRGenerator::ir_default(ast_node * node)
{
    // 未知的节点
    printf("Unkown node(%d)\n", (int)node->node_type);
    return true;
}

/// @brief 根据AST的节点运算符查找对应的翻译函数并执行翻译动作
/// @param node AST节点
/// @return 成功返回node节点，否则返回nullptr
ast_node * IRGenerator::ir_visit_ast_node(ast_node * node)
{
    // 空节点
    if (nullptr == node) {
        return nullptr;
    }

    bool result;
    ast_operator_type op = node->node_type;

    std::unordered_map<ast_operator_type, ast2ir_handler_t>::const_iterator pIter;
    pIter = ast2ir_handlers.find(op);
    if (pIter == ast2ir_handlers.end()) {
        // 没有找到，则说明当前不支持
        result = (this->ir_default)(node);
    } else {
        result = (this->*(pIter->second))(node);
    }

    if (!result) {
        // 语义解析错误，则出错返回
        node = nullptr;
    }

    return node;
}

/// @brief 遍历抽象语法树产生线性IR，保存到IRCode中
/// @param root 抽象语法树
/// @param IRCode 线性IR
/// @return true: 成功 false: 失败
bool IRGenerator::run()
{
    bool result;

    result = ir_visit_ast_node(root);
    if (!result) {
        return false;
    }

    return true;
}