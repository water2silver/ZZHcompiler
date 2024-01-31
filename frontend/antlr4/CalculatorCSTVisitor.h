#pragma once

#include "AST.h"
#include "CalculatorBaseVisitor.h"


/// @brief 遍历具体语法树产生抽象语法树
class CalculatorCSTVisitor : public CalculatorBaseVisitor {

public:
    /// @brief 构造函数
    CalculatorCSTVisitor();

    /// @brief 析构函数
    virtual ~CalculatorCSTVisitor();

    /// @brief 遍历CST产生AST
    /// @param root CST语法树的根结点
    /// @return AST的根节点
    ast_node * run(CalculatorParser::CompileUnitContext * root);

protected:
    /* 下面的函数都是从CalculatorBaseVisitor继承下来的虚拟函数，需要重载实现 */

    /// @brief 非终结运算符compileUnit的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitCompileUnit(CalculatorParser::CompileUnitContext * ctx) override;

    /// @brief 非终结运算符funcDef的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitFuncDef(CalculatorParser::FuncDefContext * ctx) override;

    /// @brief 非终结运算符funcFormalParams的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitFuncFormalParams(CalculatorParser::FuncFormalParamsContext * ctx) override;

    /// @brief 非终结运算符funcFormalParam的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitFuncFormalParam(CalculatorParser::FuncFormalParamContext * ctx) override;

    /// @brief 非终结运算符funcBasicParam的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitFuncBasicParam(CalculatorParser::FuncBasicParamContext * ctx) override;

    /// @brief 非终结运算符block的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitBlock(CalculatorParser::BlockContext * ctx) override;

    /// @brief 非终结运算符blockItemList的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitBlockItemList(CalculatorParser::BlockItemListContext * ctx) override;

    /// @brief 非终结运算符blockItem的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitBlockItem(CalculatorParser::BlockItemContext * ctx) override;

    /// @brief 非终结运算符statement中的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitStatement(CalculatorParser::StatementContext * ctx);

    /// @brief 非终结运算符statement中的assignStatement的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitAssignStatement(CalculatorParser::AssignStatementContext * ctx) override;

    /// @brief 非终结运算符statement中的expressionStatement的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitExpressionStatement(CalculatorParser::ExpressionStatementContext * ctx) override;

    /// @brief 非终结运算符statement中的expressionShowStatement的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitExpressionShowStatement(CalculatorParser::ExpressionShowStatementContext * ctx) override;

    /// @brief 非终结运算符statement中的returnStatement的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitReturnStatement(CalculatorParser::ReturnStatementContext * ctx) override;

    /// @brief 非终结运算符expr的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitExpr(CalculatorParser::ExprContext * ctx) override;

    /// @brief 非终结运算符addExp的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitAddExp(CalculatorParser::AddExpContext * ctx) override;

    /// @brief 非终结运算符addOp的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitAddOp(CalculatorParser::AddOpContext * ctx) override;

    /// @brief 非终结运算符unaryExp的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitUnaryExp(CalculatorParser::UnaryExpContext * ctx) override;

    /// @brief 非终结运算符primaryExp的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitPrimaryExp(CalculatorParser::PrimaryExpContext * ctx) override;

    /// @brief 非终结运算符realParamList的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitRealParamList(CalculatorParser::RealParamListContext * ctx) override;

    /// @brief 非终结运算符lVal的遍历
    /// @param ctx CST上下文
    /// @return AST的节点
    std::any visitLVal(CalculatorParser::LValContext * ctx) override;
};
