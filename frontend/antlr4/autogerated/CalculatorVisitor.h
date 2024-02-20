
// Generated from Calculator.g4 by ANTLR 4.12.0

#pragma once


#include "antlr4-runtime.h"
#include "CalculatorParser.h"



/**
 * This class defines an abstract visitor for a parse tree
 * produced by CalculatorParser.
 */
class  CalculatorVisitor : public antlr4::tree::AbstractParseTreeVisitor {
public:

  /**
   * Visit parse trees produced by CalculatorParser.
   */
    virtual std::any visitCompileUnit(CalculatorParser::CompileUnitContext *context) = 0;

    virtual std::any visitFuncDef(CalculatorParser::FuncDefContext *context) = 0;

    virtual std::any visitFuncFormalParams(CalculatorParser::FuncFormalParamsContext *context) = 0;

    virtual std::any visitFuncFormalParam(CalculatorParser::FuncFormalParamContext *context) = 0;

    virtual std::any visitFuncBasicParam(CalculatorParser::FuncBasicParamContext *context) = 0;

    virtual std::any visitBlock(CalculatorParser::BlockContext *context) = 0;

    virtual std::any visitBlockItemList(CalculatorParser::BlockItemListContext *context) = 0;

    virtual std::any visitBlockItem(CalculatorParser::BlockItemContext *context) = 0;

    virtual std::any visitAssignStatement(CalculatorParser::AssignStatementContext *context) = 0;

    virtual std::any visitExpressionStatement(CalculatorParser::ExpressionStatementContext *context) = 0;

    virtual std::any visitExpressionShowStatement(CalculatorParser::ExpressionShowStatementContext *context) = 0;

    virtual std::any visitReturnStatement(CalculatorParser::ReturnStatementContext *context) = 0;

    virtual std::any visitExpr(CalculatorParser::ExprContext *context) = 0;

    virtual std::any visitAddExp(CalculatorParser::AddExpContext *context) = 0;

    virtual std::any visitAddOp(CalculatorParser::AddOpContext *context) = 0;

    virtual std::any visitUnaryExp(CalculatorParser::UnaryExpContext *context) = 0;

    virtual std::any visitPrimaryExp(CalculatorParser::PrimaryExpContext *context) = 0;

    virtual std::any visitRealParamList(CalculatorParser::RealParamListContext *context) = 0;

    virtual std::any visitLVal(CalculatorParser::LValContext *context) = 0;


};

