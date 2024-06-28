/**
 * @file IRGenerator.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief AST遍历产生线性IR
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#include <cstdint>
#include <cstdio>
#include <unordered_map>
#include <vector>
#include <iostream>
#include "AST.h"
#include "IRCode.h"
#include "IRGenerator.h"
#include "IRInst.h"
#include "SymbolTable.h"
#include "Value.h"
#include "ValueType.h"
#include "IROptimization.h"

/// @brief 构造函数
/// @param _root AST的根
/// @param _symtab 符号表
IRGenerator::IRGenerator(ast_node * _root, SymbolTable * _symtab) : root(_root), symtab(_symtab)
{
    /* 叶子节点 */
    ast2ir_handlers[ast_operator_type::AST_OP_LEAF_LITERAL_UINT] = &IRGenerator::ir_leaf_node_uint;
    ast2ir_handlers[ast_operator_type::AST_OP_LEAF_LITERAL_FLOAT] = &IRGenerator::ir_leaf_node_float;
    ast2ir_handlers[ast_operator_type::AST_OP_LEAF_VAR_ID] = &IRGenerator::ir_leaf_node_var_id;
    //new
	ast2ir_handlers[ast_operator_type::AST_OP_LEAF_TYPE] = &IRGenerator::ir_leaf_type;


    /* 表达式运算， 加减 */
    ast2ir_handlers[ast_operator_type::AST_OP_SUB] = &IRGenerator::ir_sub;
    ast2ir_handlers[ast_operator_type::AST_OP_ADD] = &IRGenerator::ir_add;

	/* 表达式运算， 乘除 */
    ast2ir_handlers[ast_operator_type::AST_OP_TIMES] = &IRGenerator::ir_times;
    ast2ir_handlers[ast_operator_type::AST_OP_DIV] = &IRGenerator::ir_div;
    ast2ir_handlers[ast_operator_type::AST_OP_MOD] = &IRGenerator::ir_mod;


	/* 表达式运算，关系运算*/
    ast2ir_handlers[ast_operator_type::AST_OP_LESS_THAN] = &IRGenerator::ir_less_than;
    ast2ir_handlers[ast_operator_type::AST_OP_GREATER_THAN] = &IRGenerator::ir_greater_than;
    ast2ir_handlers[ast_operator_type::AST_OP_LESS_EQUAL] = &IRGenerator::ir_less_equal;
    ast2ir_handlers[ast_operator_type::AST_OP_GREATER_EQUAL] = &IRGenerator::ir_greater_equal;
    ast2ir_handlers[ast_operator_type::AST_OP_EQUAL] = &IRGenerator::ir_equal;
    ast2ir_handlers[ast_operator_type::AST_OP_NOT_EQUAL] = &IRGenerator::ir_not_equal;
    ast2ir_handlers[ast_operator_type::AST_OP_LOGICAL_AND] = &IRGenerator::ir_logical_and;
    ast2ir_handlers[ast_operator_type::AST_OP_LOGICAL_OR] = &IRGenerator::ir_logical_or;

	/* 一元运算符*/
    ast2ir_handlers[ast_operator_type::AST_OP_POSITIVE] = &IRGenerator::ir_positive;
    ast2ir_handlers[ast_operator_type::AST_OP_NEGATIVE] = &IRGenerator::ir_negative;
    ast2ir_handlers[ast_operator_type::AST_OP_NOT] = &IRGenerator::ir_not;

	/* 常量，变量定义*/
    ast2ir_handlers[ast_operator_type::AST_OP_DECL] = &IRGenerator::ir_decl;
	//TODO 暂支不区分var_decl 和 const_decl的IR形式
    ast2ir_handlers[ast_operator_type::AST_OP_VAR_DECL] = &IRGenerator::ir_decl;
    ast2ir_handlers[ast_operator_type::AST_OP_CONST_DECL] = &IRGenerator::ir_decl;
    ast2ir_handlers[ast_operator_type::AST_OP_VAR_DEF] = &IRGenerator::ir_var_def;
	//对数组定义的支持
    ast2ir_handlers[ast_operator_type::AST_OP_ARRAY_DEF] = &IRGenerator::ir_array_def;
    ast2ir_handlers[ast_operator_type::AST_OP_ARRAY] = &IRGenerator::ir_array;
    ast2ir_handlers[ast_operator_type::AST_OP_ARRAY_VISIT] = &IRGenerator::ir_array_visit;



    /*语句结构部分*/
    ast2ir_handlers[ast_operator_type::AST_OP_IF] = &IRGenerator::ir_if;
    ast2ir_handlers[ast_operator_type::AST_OP_WHILE] = &IRGenerator::ir_while;
	
    ast2ir_handlers[ast_operator_type::AST_OP_COND] = &IRGenerator::ir_cond;
	//break
	// ast2ir_handlers[ast_operator_type::AST_OP_B]


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

    inCondtion = false;
}

/// @brief 编译单元AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_compile_unit(ast_node * node)
{
    // 新建main函数并默认设置当前函数为main函数
    // symtab->mainFunc = symtab->newFunction("init", BasicType::TYPE_INT);
    // symtab->currentFunc = symtab->mainFunc;

    for (auto son: node->sons) {

        // 遍历编译单元，要么是函数定义，要么是语句
        ast_node * son_node = ir_visit_ast_node(son);
        if (!son_node) {
            return false;
        }

        node->blockInsts.addInst(son_node->blockInsts);
    }

    // 获取函数的IR代码列表，用于后面追加指令用，注意这里用的是引用传值
    // InterCode & irCode = symtab->currentFunc->getInterCode();

    // 创建并加入Entry入口指令
    // irCode.addInst(new EntryIRInst());

    // 创建出口指令并不加入出口指令，等函数内的指令处理完毕后加入出口指令
    // IRInst * exitLabelInst = new LabelIRInst();
    // symtab->currentFunc->setExitLabel(exitLabelInst);

    // 新建一个Value，用于保存函数的返回值，如果没有返回值可不用申请，
    // 目前不需要
#if 0
    Value * retValue = symtab->currentFunc->newVarValue(BasicType::TYPE_INT);
    symtab->currentFunc->setReturnValue(retValue);
#endif

    // 除了函数定义的指令外都加入到main函数的指令当中
    // irCode.addInst(node->blockInsts);

    // 添加函数出口Label指令，主要用于return语句跳转到这里进行函数的退出
    // irCode.addInst(exitLabelInst);

    // 尾部追加一个return 0指令，使得main函数的格式正确
    // irCode.addInst(new ExitIRInst(new ConstValue(0)));

    // main函数移动到列表的尾部，以便后续简便处理
    // symtab->moveFunctionEnd(symtab->mainFunc);

    // 设置成空，使得后续访问该变量出错。
    // symtab->currentFunc = nullptr;

    return true;
}

/// @brief 函数定义AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_function_define(ast_node * node)
{
    // 创建一个函数，用于当前函数处理
    // if (symtab->currentFunc != symtab->mainFunc) {
    //     // 函数中嵌套定义函数，这是不允许的，错误退出
    //     // TODO 自行追加语义错误处理
    //     return false;
    // }
	if(node->name =="getint"||node->name=="getch"||node->name=="getarray"||
	   node->name=="putint"|| node->name=="putch" || node->name =="putarray" ||
	   node->name =="putstr")
	{
        return true;
    }
    // 创建一个新的函数定义，函数的返回类型设置为VOID，待定，必须等return时才能确定，目前可以是VOID或者INT类型
    symtab->currentFunc = new Function(node->name, node->type.type);
    symtab->currentFunc->setSymtab(symtab);
    bool result = symtab->insertFunction(symtab->currentFunc);
    if (!result) {
        // 清理资源
        delete symtab->currentFunc;

        // 恢复当前函数指向main函数
        symtab->currentFunc = symtab->mainFunc;

        // 函数已经定义过了，不能重复定义，语义错误：出错返回。
        // TODO 自行追加语义错误处理
        // printf("函数重复定义");
        std::cout << "函数重复定义" + node->name << std::endl;
        return false;
    }

    // 获取函数的IR代码列表，用于后面追加指令用，注意这里用的是引用传值
    InterCode & irCode = symtab->currentFunc->getInterCode();
	
    // 这里也可增加一个函数入口Label指令，便于后续基本块划分
    LabelIRInst * entryLabelInst = new LabelIRInst();
    irCode.addInst(entryLabelInst);
    // 创建并加入Entry入口指令
    irCode.addInst(new EntryIRInst());

    // 创建出口指令并不加入出口指令，等函数内的指令处理完毕后加入出口指令
    IRInst * exitLabelInst = new LabelIRInst();

    // 函数出口指令保存到函数信息中，因为在语义分析函数体时return语句需要跳转到函数尾部，需要这个label指令
    symtab->currentFunc->setExitLabel(exitLabelInst);

    // 新建一个Value，用于保存函数的返回值，如果没有返回值可不用申请，
    // 目前未知，先创建一个，不用后续可释放
    BasicType returnType = node->sons[0]->type.type;
    Value * retValue = symtab->currentFunc->newVarValue(returnType);

    // 保存函数返回值变量到函数信息中，在return语句翻译时需要设置值到这个变量中
    symtab->currentFunc->setReturnValue(retValue);

    // 遍历函数体内的每个语句
    for (auto son: node->sons) {

        // 遍历函数定义，孩子要么是形式参数，要么是block
        ast_node * son_node = ir_visit_ast_node(son);
        if (!son_node) {

            // 对函数体内的语句进行语义分析时出现错误
            return false;
        }

        // IR指令追加到当前的节点中
        node->blockInsts.addInst(son_node->blockInsts);
    }

    // 此时，所有指令都加入到当前函数中，也就是node->blockInsts

    // node节点的指令移动到函数的IR指令列表中
    irCode.addInst(node->blockInsts);

    // 添加函数出口Label指令，主要用于return语句跳转到这里进行函数的退出
    irCode.addInst(exitLabelInst);

    // 检查函数是否有返回值类型，则需要设置返回值，否则不设置
    if (symtab->currentFunc->getReturnType().type != BasicType::TYPE_VOID) {
        // 函数出口指令
        irCode.addInst(new ExitIRInst(retValue));
        // irCode.addInst(new BranchIRInst(exitLabelInst));
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
    bool result = true;
    // 获取当前要保存函数的形式参数清单
    auto & params = symtab->currentFunc->getParams();

    // 遍历形式参数列表，孩子是叶子节点
    for (auto son: node->sons) {
		if(son->node_type==ast_operator_type::AST_OP_FUNC_ARRAY)
		{

			Value * var = symtab->currentFunc->newVarValue(son->sons[0]->name, BasicType::TYPE_INT);

            std::vector<int> array_dim;
            ast_node * tmp = son->sons[1];
			while(!tmp->sons.empty())
			{
				array_dim.push_back(tmp->sons[0]->integer_val);
				tmp = tmp->sons[1];
			}
            array_dim[0] = 0;
            var->set_array_info(array_dim);

            //这个tempValue不会被declare语句再输出一次
			Value * tempValue = new TempValue(BasicType::TYPE_INT);
            tempValue->set_array_info(array_dim);
            node->blockInsts.addInst(new AssignIRInst(var, tempValue));
            // 默认是整数类型
			params.emplace_back(tempValue->getName(), BasicType::TYPE_INT, tempValue);
			// 这是为了在后端方便找到对应的局部变量。
            params[params.size() - 1].setVarName(var->name);
			//设置后端需要的信息。
			var->isParamArray = true;

        }else if(son->node_type==ast_operator_type::AST_OP_FUNC_FORMAL_PARAM)
		{
			// 创建变量，默认整型
			Value * var = symtab->currentFunc->newVarValue(son->name, BasicType::TYPE_INT);
			//这个tempValue不会被declare语句再输出一次
			Value * tempValue = new TempValue(BasicType::TYPE_INT);
			node->blockInsts.addInst(new AssignIRInst(var, tempValue));
			// 默认是整数类型
			params.emplace_back(tempValue->getName(), BasicType::TYPE_INT, tempValue);
            params[params.size() - 1].setVarName(var->name);

		}
        
    }

    return result;
}

/// @brief 函数调用AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_function_call(ast_node * node)
{
    std::vector<Value *> realParams;

    // 根据函数名查找函数，看是否存在。若不存在则出错
    // 这里约定函数必须先定义后使用
    auto pFunction = symtab->findFunction(node->name);
    if (nullptr == pFunction) {
        // TODO 这里输出错误信息
        printf("[IRGenerator::ir_function_call] 调用了未定义的函数");
        return false;
    }

    // 设置存在函数调用
    symtab->currentFunc->setExistFuncCall(true);

    // 如果没有孩子，也认为是没有参数
    if (!node->sons.empty()) {

        // 只有一个节点，实际参数列表
        auto paramsNode = node->sons[0];

        int argsCount = (int) paramsNode->sons.size();

        // 设置最大函数调用参数个数
        if (argsCount > symtab->currentFunc->getMaxFuncCallArgCnt()) {
            symtab->currentFunc->setMaxFuncCallArgCnt(argsCount);
        }

        // 遍历参数列表，孩子是表达式
        // 这里自左往右计算表达式
        for (auto son: paramsNode->sons) {

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
    node->blockInsts.addInst(new FuncCallIRInst(node->name, realParams, resultVal));

    // 设置存在函数调用，后面要根据是否函数调用进行调整栈分配策略
    symtab->currentFunc->setExistFuncCall(true);

    // 函数调用结果保存到node中，用于外部使用
    node->val = resultVal;

    return true;
}

/// @brief 语句块（含函数体）AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_block(ast_node * node)
{
    symtab->addBlockDepth();
    std::vector<ast_node *>::iterator pIter;
    for (pIter = node->sons.begin(); pIter != node->sons.end(); ++pIter) {

        // 遍历Block的每个语句，进行显示或者运算
        ast_node * temp = ir_visit_ast_node(*pIter);
        if (!temp) {
            return false;
        }

        node->blockInsts.addInst(temp->blockInsts);
    }
	if(symtab->currentFunc)
	{
        symtab->currentFunc->stackPop(symtab->getBlockDepth());
    }
    symtab->subBlockDepth();
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

        // 创建函数调用指令
        node->blockInsts.addInst(new FuncCallIRInst("putint", result->val));

        // 设置存在函数调用，后面要根据是否函数调用进行调整栈分配策略
        symtab->currentFunc->setExistFuncCall(true);
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
	//常数优化，放在遍历之后。
    bool constantOptimizationResult = constantOptimization(node);
	if(constantOptimizationResult)
	{
        return true;
    }

    // 这里只处理整型的数据，如需支持实数，则需要针对类型进行处理
    // TODO real number add
	// add 的结果存放到TempValue，但是函数的结果存放到VarValue
    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_ADD_I, resultValue, left->val, right->val));
    node->val = resultValue;

    return true;
}

/// @brief 整数减法AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_sub(ast_node * node)
{
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
    // TODO real number add

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_SUB_I, resultValue, left->val, right->val));
    node->val = resultValue;

    return true;
}

/// @brief 整数乘法AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_times(ast_node * node)
{
    ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 乘法节点，左结合，先计算左节点，后计算右节点

    // 乘法的左边操作数
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
    // TODO real number add

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_TIMES_I, resultValue, left->val, right->val));
    node->val = resultValue;

    return true;
}

/// @brief 整数除法AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_div(ast_node * node)
{
    ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 除法节点，左结合，先计算左节点，后计算右节点

    // 除法的左边操作数
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
    // TODO real number add

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_DIV_I, resultValue, left->val, right->val));
    node->val = resultValue;

    return true;
}

/// @brief 整数取模AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_mod(ast_node * node)
{
    ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 除法节点，左结合，先计算左节点，后计算右节点

    // 除法的左边操作数
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
    // TODO real number add

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    //node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_MOD_I, resultValue, left->val, right->val));
    // 将 mod 指令优化为 / * -指令
    Value * divValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
	Value * mulValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_DIV_I, divValue, left->val, right->val));
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_TIMES_I, mulValue, divValue, right->val));
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_SUB_I, resultValue, left->val, mulValue));

    node->val = resultValue;

    return true;
}

/// @brief 整数 < 运算AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_less_than(ast_node * node)
{
	ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 除法节点，左结合，先计算左节点，后计算右节点

    // 除法的左边操作数
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
    // TODO real number add

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_LESS_THAN_I, resultValue, left->val, right->val));
    // node->blockInsts.addInst(new IfIRInst(IRInstOperator::IRINST_OP_IF,resultValue,node->label_true,node->label_false));
    auto inst = new IfIRInst(IRInstOperator::IRINST_OP_IF, resultValue, node->label_true, node->label_false);
    inst->setAddition("blt");
    node->blockInsts.addInst(inst);
	node->val = resultValue;

    return true;
}

/// @brief 整数 > 运算AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_greater_than(ast_node * node)
{
	ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 除法节点，左结合，先计算左节点，后计算右节点

    // 除法的左边操作数
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
    // TODO real number add

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_GREATER_THAN_I, resultValue, left->val, right->val));
    auto inst = new IfIRInst(IRInstOperator::IRINST_OP_IF, resultValue, node->label_true, node->label_false);
    inst->setAddition("bgt");
    node->blockInsts.addInst(inst);
    node->val = resultValue;

    return true;
}

/// @brief 整数 <= 运算AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_less_equal(ast_node * node)
{
	ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 除法节点，左结合，先计算左节点，后计算右节点

    // 除法的左边操作数
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
    // TODO real number add

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_LESS_EQUAL_I, resultValue, left->val, right->val));
    // node->blockInsts.addInst(new IfIRInst(IRInstOperator::IRINST_OP_IF,resultValue,node->label_true,node->label_false));
	auto inst = new IfIRInst(IRInstOperator::IRINST_OP_IF, resultValue, node->label_true, node->label_false);
    inst->setAddition("ble");
    node->blockInsts.addInst(inst);
	node->val = resultValue;

    return true;
}

/// @brief 整数 >= 运算AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_greater_equal(ast_node * node)
{
	ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 除法节点，左结合，先计算左节点，后计算右节点

    // 除法的左边操作数
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
    // TODO real number add

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_GREATER_EQUAL_I, resultValue, left->val, right->val));
    // node->blockInsts.addInst(new IfIRInst(IRInstOperator::IRINST_OP_IF,resultValue,node->label_true,node->label_false));
	auto inst = new IfIRInst(IRInstOperator::IRINST_OP_IF, resultValue, node->label_true, node->label_false);
    inst->setAddition("bge");
    node->blockInsts.addInst(inst);
	node->val = resultValue;

    return true;
}

/// @brief 整数 == 运算AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_equal(ast_node * node)
{
	ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 除法节点，左结合，先计算左节点，后计算右节点

    // 除法的左边操作数
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
    // TODO real number add

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_EQUAL_I, resultValue, left->val, right->val));
    // node->blockInsts.addInst(new IfIRInst(IRInstOperator::IRINST_OP_IF, resultValue, node->label_true, node->label_false));
	auto inst = new IfIRInst(IRInstOperator::IRINST_OP_IF, resultValue, node->label_true, node->label_false);
    inst->setAddition("beq");
    node->blockInsts.addInst(inst);
	node->val = resultValue;

    return true;
}

/// @brief 整数 != 运算AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_not_equal(ast_node * node)
{
	ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

    // 除法节点，左结合，先计算左节点，后计算右节点

    // 除法的左边操作数
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
    // TODO real number add

    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_EQUAL_I, resultValue, left->val, right->val));
    //not equal调转真假出口位置 
	//TODO 思考，需要调换node本身的label_true label_false位置吗？
	// node->blockInsts.addInst(new IfIRInst(IRInstOperator::IRINST_OP_IF, resultValue, node->label_false, node->label_true));
    auto inst = new IfIRInst(IRInstOperator::IRINST_OP_IF, resultValue, node->label_false, node->label_true);
    inst->setAddition("beq");
    node->blockInsts.addInst(inst);
	
	node->val = resultValue;

    return true;
}

/// @brief 整数 && 运算AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_logical_and(ast_node * node)
{
	ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];
	//label or 的第二个子节点的入口地址
    LabelIRInst * label_and = new LabelIRInst();
    src1_node->inherit_label(node);
	//这里是 and 节点和 or 节点不同的地方
    src1_node->label_true = label_and;
    src2_node->inherit_label(node);
    // 除法节点，左结合，先计算左节点，后计算右节点

    // 除法的左边操作数
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
    // TODO real number add

    // Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    // node->blockInsts.addInst(new IfIRInst(IRInstOperator::IRINST_OP_IF,left->val,left->label_true,left->label_false));

    node->blockInsts.addInst(label_and);
    node->blockInsts.addInst(right->blockInsts);
    // node->blockInsts.addInst(new IfIRInst(IRInstOperator::IRINST_OP_IF,right->val,right->label_true,right->label_false));
    // node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_LOGICAL_OR_I, resultValue, left->val, right->val));
    // node->val = resultValue;

    return true;
}

/// @brief 整数 || 运算AST节点翻译成线性中间，似乎默认逻辑运算只会用在cond节点中
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_logical_or(ast_node * node)
{
	ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];
	//label or 的第二个子节点的入口地址
    LabelIRInst * label_or = new LabelIRInst();
    src1_node->inherit_label(node);
    src1_node->label_false = label_or;
    src2_node->inherit_label(node);

    // 除法节点，左结合，先计算左节点，后计算右节点
    // 除法的左边操作数
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
    // TODO real number add

    // Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(left->blockInsts);
    // node->blockInsts.addInst(new IfIRInst(IRInstOperator::IRINST_OP_IF,left->val,left->label_true,left->label_false));

    node->blockInsts.addInst(label_or);
    node->blockInsts.addInst(right->blockInsts);
    // node->blockInsts.addInst(new IfIRInst(IRInstOperator::IRINST_OP_IF,right->val,right->label_true,right->label_false));
    // node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_LOGICAL_OR_I, resultValue, left->val, right->val));
    // node->val = resultValue;

    return true;
}

/// @brief if 节点的中间线性IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_if(ast_node * node)
{
    int result = 1;
	
	//res_cond 为共有部分
	ast_node * cond_node = node->sons[0];
	ast_node * true_node = node->sons[1];
	auto label_true = new LabelIRInst();
    auto label_false = new LabelIRInst();
    auto label_end = new LabelIRInst();
    cond_node->set_label(label_true, label_false, label_end);

    ast_node * res_cond = ir_visit_ast_node(cond_node);
    if(res_cond==nullptr)
	{
		result = 0;
	}
    node->blockInsts.addInst(res_cond->blockInsts);
	//真出口，假出口，结束出口。
    
    // LabelValue * true_value = new LabelValue(label_true->getLabelName());
    // LabelValue * false_value = new LabelValue(label_false->getLabelName());
    // LabelValue * end_value = new LabelValue(label_end->getLabelName());
    //这部分内容可能冗余了
	// node->blockInsts.addInst(new IfIRInst(IRInstOperator::IRINST_OP_IF,label_true,label_false));

	//true 部分
	ast_node * res_true = ir_visit_ast_node(true_node);
	if(res_true==nullptr)
	{
		result = 0;
	}
	node->blockInsts.addInst(label_true);
	node->blockInsts.addInst(res_true->blockInsts);
	// 只有有false block的时候，才给true block的末尾增加跳转语句.
	if(node->sons.size()==3)
	{
    	node->blockInsts.addInst(new BranchIRInst(label_end));
	}
    // false block部分
    node->blockInsts.addInst(label_false);
    if(node->sons.size() == 3)
    {
		ast_node * false_node = node->sons[2];
        ast_node * res_false = ir_visit_ast_node(false_node);
		if(res_false == nullptr)
		{
            result = 0;
        }
        node->blockInsts.addInst(res_false->blockInsts);
	    // node->blockInsts.addInst(new BranchIRInst(label_end));
    }
    node->blockInsts.addInst(label_end);

    return result;
}

/// @brief while 节点的中间线性IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_while(ast_node * node)
{
    int result = 1;
    ast_node * cond_node = node->sons[0];
    ast_node * block_node = node->sons[1];
	//while的label跟if的label有区别看能不能兼容吧
    LabelIRInst * cond_label = new LabelIRInst();
	//truelabel 即为block的语句
    LabelIRInst * true_label = new LabelIRInst();
	//falselabel即为离开while
    LabelIRInst * false_label = new LabelIRInst();
    node->set_label(true_label, false_label, cond_label);
	cond_node->inherit_label(node);
	
	//插入标签。
    symtab->currentFunc->continueLabelStack.push(cond_label);
    symtab->currentFunc->breakLabelStack.push(false_label);

    ast_node * res_cond = ir_visit_ast_node(cond_node);
	// 倒反天罡！
    node->inherit_label(cond_node);
	
    ast_node * res_block = ir_visit_ast_node(block_node);
    

    if (res_cond == nullptr || res_block == nullptr) {
        result = 0;
    }
    node->blockInsts.addInst(cond_label);
    node->blockInsts.addInst(res_cond->blockInsts);
    node->blockInsts.addInst(true_label);
    node->blockInsts.addInst(res_block->blockInsts);
    node->blockInsts.addInst(new BranchIRInst(cond_label));
    node->blockInsts.addInst(false_label);

	//弹出标签。
    symtab->currentFunc->continueLabelStack.pop();
    symtab->currentFunc->breakLabelStack.pop();
    return result;
}

/// @brief cond的节点的中间线性IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_cond(ast_node * node)
{
	bool result = true;
    node->sons[0]->inherit_label(node);

    this->inCondtion = true;
    ast_node * res = ir_visit_ast_node(node->sons[0]);
    this->inCondtion = false;
 
    if (res == nullptr) {
        result = false;
        printf("cond节点visit子节点失败");
    }
    node->blockInsts.addInst(res->blockInsts);
    node->val = res->val;
    return result;
}

/// @brief 变量定义节点翻译成中间线性IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_var_def(ast_node * node)
{
    bool result = true;
    for (ast_node * son: node->sons) {

		//函数内局部变量
		if(symtab->currentFunc!=nullptr)
		{
			//TODO 现在假设所有数组均不初始化
			//不初始化的情况，目前
			if(son->node_type==ast_operator_type::AST_OP_LEAF_VAR_ID || son->node_type==ast_operator_type::AST_OP_ARRAY_DEF)
			{
				ast_node * res = ir_visit_ast_node(son);
				if(res==nullptr)
				{
					result = false;
				}
				node->blockInsts.addInst(new DeclIRInst(IRInstOperator::IRINST_OP_VAR_DEF, son->val));
			} else // 初始化的情况-这时候子节点为类型应该为ASSIGN
			{
				//如果初始化，应为ASSIGN节点
				ast_node * res1 = ir_visit_ast_node(son->sons[0]);
				ast_node * res2 = ir_visit_ast_node(son->sons[1]);
				if(res2==nullptr || res1==nullptr)
				{
					result = false;
				}
				//
				node->blockInsts.addInst(res1->blockInsts);
				node->blockInsts.addInst(res2->blockInsts);
				node->blockInsts.addInst(new DeclIRInst(IRInstOperator::IRINST_OP_VAR_DEF, res1->val, res2->val));
			}
		}else //函数外的全局变量
		{
			//默认初始化为 0 
			if(son->node_type==ast_operator_type::AST_OP_LEAF_VAR_ID || son->node_type==ast_operator_type::AST_OP_ARRAY_DEF)
			{
				ast_node * res = ir_visit_ast_node(son);
				if(res==nullptr)
				{
					result = false;
				}
                symtab->globalVarDefInsts.addInst(new GlobalDeclIRInst(IRInstOperator::IRINST_OP_GLOBAL_DEF, son->val));
                // node->blockInsts.addInst();
            } else // 初始化的情况-这时候子节点为类型应该为ASSIGN
			{
				ast_node * res1 = ir_visit_ast_node(son->sons[0]);
				ast_node * res2 = ir_visit_ast_node(son->sons[1]);
				if(res2==nullptr || res1==nullptr)
				{
					result = false;
				}
				//
                symtab->globalVarDefInsts.addInst(res1->blockInsts);
                symtab->globalVarDefInsts.addInst(res2->blockInsts);
                symtab->globalVarDefInsts.addInst(
                    new GlobalDeclIRInst(IRInstOperator::IRINST_OP_GLOBAL_DEF, res1->val, res2->val));

			}
		}
		
    }
    return result;
}

/// @brief 数组定义节点翻译成中间线性IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_array_def(ast_node * node)
{
    int result = 1;
    ast_node * var_node = node->sons[0];
    ast_node * array_node = node->sons[1];

    ast_node * res_var = ir_visit_ast_node(var_node);
	if(res_var == nullptr)
	{
        result = 0;
    }
	//TODO 
    ast_node * res_array = ir_visit_ast_node(array_node);
	if(res_array==nullptr)
	{
        result = 0;
    }
	//还是要解耦设计
    std::vector<int> array_dim;
    ast_node * tmp = array_node;
	while(!tmp->sons.empty())
	{
        array_dim.push_back(tmp->sons[0]->integer_val);
        tmp = tmp->sons[1];
    }
    Value * val;
	if(symtab->currentFunc!=nullptr)
	{
		val = symtab->currentFunc->findValue(res_var->name, false);
        val->set_array_info(array_dim);
    }else
	{
        val = symtab->findValue(res_var->name, false);
        val->set_array_info(array_dim);
    }

    //三个子节点，意味着有数组的初始化工作
	if(node->sons.size()==3)
	{

	}
    node->val = val;

    return result;
}

// TODO 未来常数优化的起点。 
/// @brief 数组定义节点的子节点,可能不存在线性IR生成，但是可能涉及常数优化？
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_array(ast_node * node)
{
    bool result = true;
	//没有子节点，直接结束。
	if(node->sons.empty())
	{
        return result;
    }
    ast_node * src_node1 = node->sons[0];
    ast_node * src_node2 = node->sons[1];

    ast_node * res_node1 = ir_visit_ast_node(src_node1);
	if(res_node1==nullptr)
	{
        result = false;
    }
    ast_node * res_node2 = ir_visit_ast_node(src_node2);
	if(res_node2==nullptr)
	{
        result = false;
    }
    node->blockInsts.addInst(res_node1->blockInsts);
    node->blockInsts.addInst(res_node2->blockInsts);
    return result;
}

/// @brief 数组访问节点
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_array_visit(ast_node * node)
{
    bool result = true;
    ast_node * var_node = node->sons[0];
    ast_node * visit_node = node->sons[1];
    int dim_size = visit_node->sons.size();
    ast_node* res_var = ir_visit_ast_node(var_node);
	if(res_var==nullptr)
	{
        result = false;
    }
    Value * val;
    // 函数内访问
    if(symtab->currentFunc!=nullptr)
	{
        val = symtab->currentFunc->findValue(var_node->name, false);
    } else // 全局访问
    {
        val = symtab->findValue(var_node->name, false);
    }
	//错误检查
    if(val==nullptr)
	{
		printf("未定义变量\n");
	}
	if(val->array_info==nullptr)
	{
		printf("该变量无数组信息\n");
	}

    Value * returnVal;
    std::vector<int> new_array_dim;
    // 如果不等于，意味着要访问大数组的子数组
    if(val->array_info->getDim().size()!=dim_size)
	{
		//这是子数组的维度计算。
        int mulSize = 1;
        for (int i = dim_size; i < val->array_info->getDim().size();i++)
		{
            mulSize *= val->array_info->getDim()[i];
            new_array_dim.push_back(val->array_info->getDim()[i]);
        }
        Value * tmpValue;
		if(dim_size==1)
		{
			Value * visit_value = new ConstValue((int32_t)visit_node->sons[0]->integer_val);
			Value * dim_value = new ConstValue(mulSize);
            
			tmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
            node->blockInsts.addInst(
                new BinaryIRInst(IRInstOperator::IRINST_OP_TIMES_I, tmpValue, visit_value,dim_value));

		} else {
            for (int i = 0; i < dim_size;i++)
			{
				Value * mulResValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
				Value * visit_value = new ConstValue((int32_t)visit_node->sons[i]->integer_val);
				Value * dim_value = new ConstValue(val->array_info->getDim()[i+1]);
				if(i==dim_size-1)
				{
					dim_value = new ConstValue(mulSize);
				}
				// 第一次使用
				if(i==0)
				{
					//使用visit_value
					node->blockInsts.addInst(
									new BinaryIRInst(IRInstOperator::IRINST_OP_TIMES_I, mulResValue, visit_value, dim_value));
				}else
				{
					//使用上一次循环的计算结果。
					node->blockInsts.addInst(
									new BinaryIRInst(IRInstOperator::IRINST_OP_TIMES_I, mulResValue, tmpValue, dim_value));
				}
                tmpValue = mulResValue;
                if (i != dim_size - 1) {
                    Value * addResValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
					Value * visit_value2 = new ConstValue((int32_t)visit_node->sons[i+1]->integer_val);

					node->blockInsts.addInst(
						new BinaryIRInst(IRInstOperator::IRINST_OP_ADD_I, addResValue, mulResValue, visit_value2));
					tmpValue = addResValue;
                }
            }
        }

        //乘 4 ，退出
        Value * index = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
        Value * int_size = new ConstValue(4);
        node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_TIMES_I, index, tmpValue, int_size));
        returnVal = symtab->currentFunc->newTempValue(BasicType::TYPE_POINTER);
        node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_ADD_I, returnVal, res_var->val, index));
        returnVal->set_array_info(new_array_dim);
        node->val = returnVal;
        return result;
    }


    std::vector<int> array_dim = val->array_info->getDim();
    
	if(dim_size==1)
	{
        Value * tmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
        ast_node * index_node = ir_visit_ast_node(visit_node->sons[0]);
        node->blockInsts.addInst(index_node->blockInsts);
        // Value * index = new ConstValue((int32_t) index_node->integer_val);
        Value * int_size = new ConstValue(4);
        returnVal = symtab->currentFunc->newTempValue(BasicType::TYPE_POINTER);

        node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_TIMES_I, tmpValue,index_node->val, int_size));
        node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_ADD_I, returnVal, res_var->val,tmpValue));
    
	} else {
        Value * oldTmpValue;

        for (int i = 0; i < dim_size - 1;i++)
		{
			if(i==0)
			{
                Value * mulResTmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
                Value * addResTmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
				//
        		ast_node * index_node1 = ir_visit_ast_node(visit_node->sons[0]);
		        node->blockInsts.addInst(index_node1->blockInsts);
                // Value * constValue1 = new ConstValue((int32_t) index_node->integer_val);
                Value * constValue2 = new ConstValue(array_dim[i+1]);
				//
                ast_node * index_node2 = ir_visit_ast_node(visit_node->sons[1]);
       		 	node->blockInsts.addInst(index_node2->blockInsts);	

                // Value * constValue3 = new ConstValue((int32_t) index_node2->integer_val);
                node->blockInsts.addInst(
                    new BinaryIRInst(IRInstOperator::IRINST_OP_TIMES_I, mulResTmpValue, index_node1->val, constValue2));
                node->blockInsts.addInst(
                    new BinaryIRInst(IRInstOperator::IRINST_OP_ADD_I, addResTmpValue, mulResTmpValue, index_node2->val));
                oldTmpValue = addResTmpValue;
                continue;
            }
			Value * mulResTmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
            Value * addResTmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
            Value * constValue1 = new ConstValue(array_dim[i + 1]);
			ast_node *index_node = ir_visit_ast_node(visit_node->sons[i+1]);
       		node->blockInsts.addInst(index_node->blockInsts);	
            // Value * constValue2 = new ConstValue((int32_t) index_node->integer_val);
            node->blockInsts.addInst(
                new BinaryIRInst(IRInstOperator::IRINST_OP_TIMES_I, mulResTmpValue, oldTmpValue, constValue1));
            node->blockInsts.addInst(
                new BinaryIRInst(IRInstOperator::IRINST_OP_ADD_I, addResTmpValue, mulResTmpValue, index_node->val));
            oldTmpValue = addResTmpValue;
        }
        Value * index = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
        Value * int_size = new ConstValue(4);
        node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_TIMES_I, index, oldTmpValue, int_size));
        returnVal = symtab->currentFunc->newTempValue(BasicType::TYPE_POINTER);
        node->blockInsts.addInst(new BinaryIRInst(IRInstOperator::IRINST_OP_ADD_I, returnVal, res_var->val, index));
        // returnVal = oldTmpValue;
    }
	// returnVal.type
	//数组作为左值进行赋值
	if(node->parent->sons[0]==node && node->parent->node_type==ast_operator_type::AST_OP_ASSIGN)
	{
    	node->val = returnVal;
	}else//数组作为右值
	{
		Value * tmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
		node->blockInsts.addInst(new AssignIRInst(tmpValue, returnVal));
        node->val = tmpValue;
    }

	if( (node->parent->sons.size()==1&&node->parent->node_type==ast_operator_type::AST_OP_COND ) 
	|| (node->parent->node_type==ast_operator_type::AST_OP_LOGICAL_AND 
	|| node->parent->node_type==ast_operator_type::AST_OP_LOGICAL_OR
	|| node->parent->node_type==ast_operator_type::AST_OP_NEGATIVE
	|| node->parent->node_type==ast_operator_type::AST_OP_NOT))
	{	
		Value * tmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
		Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);
		node->blockInsts.addInst(new AssignIRInst(tmpValue,node->val));

		//将判断是否为0的操作与 bc分支语句分开。
		node->blockInsts.addInst(new CondNotZeroIRInst(resultValue,tmpValue));
		if( !(node->parent->node_type==ast_operator_type::AST_OP_NEGATIVE||node->parent->node_type==ast_operator_type::AST_OP_NOT))
		{
			node->blockInsts.addInst(
				new IfIRInst(IRInstOperator::IRINST_OP_IF, resultValue, node->label_true, node->label_false)
			);
		}
		
		node->val = resultValue;
	}
    return result;
}

/// @brief 定义节点翻译成中间线性IR，不区分是否为可变变量。
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_decl(ast_node * node)
{
    bool result = true;
	//son[0]为空节点
    ast_node * res = ir_visit_ast_node(node->sons[1]);
    if (res == nullptr)
	{
        result = false;
        printf("Decl节点visit子节点失败");
    }
    node->blockInsts.addInst(res->blockInsts);
    return result;
}

/// @brief 正数节点
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_positive(ast_node * node)
{
	// TODO real number print

    ast_node * src1_node = node->sons[0];

    ast_node * result = ir_visit_ast_node(src1_node);
    if (!result) {
        // 解析错误
        return false;
    }
    Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
    node->blockInsts.addInst(result->blockInsts);

    if (result->val != nullptr) {

        //TODO 一元操作符的线性IR生成
        node->blockInsts.addInst(new UnaryIRInst(IRInstOperator::IRINST_OP_POSITIVE_I, resultValue, result->val));
    }
    node->val = resultValue;

    return true;
}

/// @brief 负数节点
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_negative(ast_node * node)
{
	// TODO real number print

    ast_node * src1_node = node->sons[0];

    src1_node->inherit_label(node);
    ast_node * result = ir_visit_ast_node(src1_node);
    if (!result) {
        // 解析错误
        return false;
    }
    node->inherit_label(src1_node);
	//针对负整数的优化
	if((src1_node->node_type==ast_operator_type::AST_OP_LEAF_LITERAL_UINT)||(src1_node->val!=nullptr && src1_node->val->isConst()))
	{
        int32_t num = 0;
        int32_t int_num = 0;
        if (src1_node->node_type == ast_operator_type::AST_OP_LEAF_LITERAL_UINT) {
            num = src1_node->integer_val;
        } else if (src1_node->val != nullptr && src1_node->val->isConst()) {
            num = src1_node->val->intVal;
        } else {
            printf("you should not reach here \n");
        }
        int_num = -1 * num;
        Value * val = new ConstValue(int_num);
        node->val = val;
        return true;
    }

    Value * resultValue;
    if (symtab->currentFunc != nullptr) {
        resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
    } else {
        resultValue = new TempValue(BasicType::TYPE_INT);
    }

    node->blockInsts.addInst(result->blockInsts);

    if (result->val != nullptr) {

        //TODO 一元操作符的线性IR生成
        node->blockInsts.addInst(new UnaryIRInst(IRInstOperator::IRINST_OP_NEGATIVE_I, resultValue, result->val));
    }
    node->val = resultValue;

	if(node->parent->node_type==ast_operator_type::AST_OP_COND
	|| node->parent->node_type==ast_operator_type::AST_OP_LOGICAL_OR
	|| node->parent->node_type==ast_operator_type::AST_OP_LOGICAL_AND)
	{
        Value * tmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);
        node->blockInsts.addInst(new CondNotZeroIRInst(tmpValue, node->val));
        node->val = tmpValue;
        node->blockInsts.addInst(
            new IfIRInst(IRInstOperator::IRINST_OP_IF, node->val, node->label_true, node->label_false));
    }

    return true;
}

/// @brief "!" 取反节点,但是理论上不应该被调用
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_not(ast_node * node)
{
	// TODO real number print

    ast_node * src1_node = node->sons[0];
    src1_node->inherit_label(node);
    src1_node->swap_true_false_label();

    ast_node * result = ir_visit_ast_node(src1_node);
	// 倒反天罡！
    node->inherit_label(src1_node);
    if (!result) {
        // 解析错误
        return false;
    }

    // Value * resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
    node->blockInsts.addInst(result->blockInsts);

    // if (result->val != nullptr) {
    //     //TODO 一元操作符的线性IR生成
    //     node->blockInsts.addInst(new UnaryIRInst(IRInstOperator::IRINST_OP_LOGICAL_NOT_I, resultValue, result->val));
    // }
    node->val = result->val;
    //
    if(node->parent->node_type==ast_operator_type::AST_OP_COND
	|| node->parent->node_type==ast_operator_type::AST_OP_LOGICAL_OR
	|| node->parent->node_type==ast_operator_type::AST_OP_LOGICAL_AND)
	{
		//实际上这里的判定应该写的更仔细一点。
		if(node->sons[0]->node_type==ast_operator_type::AST_OP_LOGICAL_AND
		|| node->sons[0]->node_type==ast_operator_type::AST_OP_LOGICAL_OR)
		{
            return true;
        }
        Value * tmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);
        node->blockInsts.addInst(new CondNotZeroIRInst( tmpValue, node->val));
        node->val = tmpValue;
        node->blockInsts.addInst(
            new IfIRInst(IRInstOperator::IRINST_OP_IF, node->val, node->label_true, node->label_false));
    }
    return true;
}


/// @brief 赋值AST节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_assign(ast_node * node)
{
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
    // TODO real number add

    // 创建临时变量保存IR的值，以及线性IR指令
    node->blockInsts.addInst(right->blockInsts);
    node->blockInsts.addInst(left->blockInsts);
    node->blockInsts.addInst(new AssignIRInst(left->val, right->val));

	//因为存在指针赋值问题，不把左侧的类型修改为right type
    // 这里假定赋值的类型是一致的
    // left->val->type = right->val->type;

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
    if (!node->sons.empty()) {

        ast_node * son_node = node->sons[0];

        // 返回的表达式的指令保存在right节点中
        right = ir_visit_ast_node(son_node);
        if (!right) {

            // 某个变量没有定值
            return false;
        }
		// 创建临时变量保存IR的值，以及线性IR指令
		node->blockInsts.addInst(right->blockInsts);

		// 返回值赋值到函数返回值变量上，然后跳转到函数的尾部
		node->blockInsts.addInst(new AssignIRInst(symtab->currentFunc->getReturnValue(), right->val));
		
		node->val = right->val;
	}

    // 这里只处理整型的数据，如需支持实数，则需要针对类型进行处理

    

    // 跳转到函数的尾部出口指令上
    //node->blockInsts.addInst(new GotoIRInst(symtab->currentFunc->getExitLabel()));
    node->blockInsts.addInst(new BranchIRInst(symtab->currentFunc->getExitLabel()));

    

    // 这里设置返回值类型
    // ValueType & returnType = symtab->currentFunc->getReturnType();
    // if (returnType.type == BasicType::TYPE_VOID) {
    //     // 设置类型
    //     // returnType.type = right->val->type.type;
    //     returnType.type = BasicType::TYPE_VOID;

    // } else if (returnType.type != right->val->type.type) {
    //     // 两者类型不一致，要出错显示
    //     // 或者隐式转换成更高的类型
    //     // TODO 这里目前什么都不做
    // }

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
	//TODO 如何区分全局变量和局部变量？

	// 当前有函数
	if(symtab->currentFunc!=nullptr)
	{
		//如果是变量定义。
		if(node->parent->node_type==ast_operator_type::AST_OP_VAR_DEF||
		   (node->parent->node_type == ast_operator_type::AST_OP_ASSIGN && node->parent->parent->node_type==ast_operator_type::AST_OP_VAR_DEF)
		)
		{
			val = symtab->currentFunc->findValueWithDepth(node->name,symtab->getBlockDepth());
		}else
		{
			val = symtab->currentFunc->findValue(node->name,false);

		}
		if (!val) {

			// 变量不存在，则创建一个变量
			val = symtab->currentFunc->newVarValue(node->name);
		}
		node->val = val;
		
		//(a) (a||b) (a&&b) 
		//  那么 (!a) (-a) 呢?
		if( (node->parent->sons.size()==1&&node->parent->node_type==ast_operator_type::AST_OP_COND ) 
		 	|| (node->parent->node_type==ast_operator_type::AST_OP_LOGICAL_AND 
			|| node->parent->node_type==ast_operator_type::AST_OP_LOGICAL_OR
			|| node->parent->node_type==ast_operator_type::AST_OP_NEGATIVE
			|| node->parent->node_type==ast_operator_type::AST_OP_NOT))
		{
            Value * tmpValue = nullptr;
            Value * resultValue = nullptr;
            // 垃圾操作一下
            if(!(node->parent->node_type==ast_operator_type::AST_OP_NEGATIVE))
			{
				//老师的IR里面会把非0比较的变量赋值给一个临时变量
				tmpValue = symtab->currentFunc->newTempValue(BasicType::TYPE_INT);
				resultValue = symtab->currentFunc->newTempValue(BasicType::TYPE_BOOL);
				node->blockInsts.addInst(new AssignIRInst(tmpValue,node->val));
				node->blockInsts.addInst(new CondNotZeroIRInst(resultValue,tmpValue));
				node->val = resultValue;
			}
			//将判断是否为0的操作与 bc分支语句分开。
            if( !(node->parent->node_type==ast_operator_type::AST_OP_NEGATIVE||node->parent->node_type==ast_operator_type::AST_OP_NOT))
			{
				node->blockInsts.addInst(
					new IfIRInst(IRInstOperator::IRINST_OP_IF, resultValue, node->label_true, node->label_false)
				);
			}
			
            // node->val = resultValue;
		}
	}else
	{
        val = symtab->findValue(node->name, false);
		if(!val)
		{
            val = symtab->newVarValue(node->name, BasicType::TYPE_INT);
        }
        val->setGlobal();
        node->val = val;
    }

    return true;
}

/// @brief 无符号整数字面量叶子节点翻译成线性中间IR
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_leaf_node_uint(ast_node * node)
{
    Value * val;

    // 新建一个整数常量Value
    val = symtab->newConstValue((int32_t) node->integer_val);

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
/// @brief 表示类型的节点
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_leaf_type(ast_node *node)
{
    // 用于处理continue break;
    if (symtab->currentFunc == nullptr) {
        return false;
    }
    if(node->type.type==BasicType::TYPE_BREAK)
	{
        auto label = symtab->currentFunc->breakLabelStack.top();
        node->blockInsts.addInst(new BranchIRInst(label));
    }else if(node->type.type==BasicType::TYPE_CONTINUE)
	{
        auto label = symtab->currentFunc->continueLabelStack.top();
        node->blockInsts.addInst(new BranchIRInst(label));
    }

    return true;
}

/// @brief 未知节点类型的节点处理
/// @param node AST节点
/// @return 翻译是否成功，true：成功，false：失败
bool IRGenerator::ir_default(ast_node * node)
{
    // 未知的节点
    printf("Unkown node(%d)\n", (int) node->node_type);
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

    std::unordered_map<ast_operator_type, ast2ir_handler_t>::const_iterator pIter;
    pIter = ast2ir_handlers.find(node->node_type);
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
    ast_node * node;

    // 从根节点进行遍历
    node = ir_visit_ast_node(root);

    return node != nullptr;
}
