
// Generated from Calculator.g4 by ANTLR 4.12.0

#pragma once


#include "antlr4-runtime.h"
#include "CalculatorVisitor.h"


/**
 * This class provides an empty implementation of CalculatorVisitor, which can be
 * extended to create a visitor which only needs to handle a subset of the available methods.
 */
class  CalculatorBaseVisitor : public CalculatorVisitor {
public:

  virtual std::any visitCompileUnit(CalculatorParser::CompileUnitContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitFuncDef(CalculatorParser::FuncDefContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitFuncFormalParams(CalculatorParser::FuncFormalParamsContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitFuncFormalParam(CalculatorParser::FuncFormalParamContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitFuncBasicParam(CalculatorParser::FuncBasicParamContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBlock(CalculatorParser::BlockContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBlockItemList(CalculatorParser::BlockItemListContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBlockItem(CalculatorParser::BlockItemContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAssignStatement(CalculatorParser::AssignStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitExpressionStatement(CalculatorParser::ExpressionStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitExpressionShowStatement(CalculatorParser::ExpressionShowStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitReturnStatement(CalculatorParser::ReturnStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitExpr(CalculatorParser::ExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAddExp(CalculatorParser::AddExpContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAddOp(CalculatorParser::AddOpContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitUnaryExp(CalculatorParser::UnaryExpContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitPrimaryExp(CalculatorParser::PrimaryExpContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitRealParamList(CalculatorParser::RealParamListContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitLVal(CalculatorParser::LValContext *ctx) override {
    return visitChildren(ctx);
  }


};

