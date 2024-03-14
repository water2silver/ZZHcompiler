#include "Antlr4CSTVisitor.h"
#include "AST.h"

/// @brief 抽象语法树的根
extern ast_node * ast_root;

#define Instanceof(res, type, var) auto res = dynamic_cast<type>(var)

/// @brief 构造函数
CalculatorCSTVisitor::CalculatorCSTVisitor()
{}

/// @brief 析构函数
CalculatorCSTVisitor::~CalculatorCSTVisitor()
{}

/// @brief 遍历CST产生AST
/// @param root CST语法树的根结点
/// @return AST的根节点
ast_node * CalculatorCSTVisitor::run(CalculatorParser::CompileUnitContext * root)
{
    return std::any_cast<ast_node *>(visitCompileUnit(root));
}

/// @brief 非终结运算符compileUnit的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitCompileUnit(CalculatorParser::CompileUnitContext * ctx)
{
    auto compileUnitNode = create_contain_node(ast_operator_type::AST_OP_COMPILE_UNIT);

    // compileUnit: (statement | funcDef) +
    // 正闭包，循环，每个孩子要么是statement，要么是funcDef
    for (auto & item: ctx->children) {
        if (Instanceof(funcdef, CalculatorParser::FuncDefContext *, item)) {
            auto temp_node = visitFuncDef(funcdef);
            (void) insert_ast_node(compileUnitNode, std::any_cast<ast_node *>(temp_node));
        } else if (Instanceof(statement, CalculatorParser::StatementContext *, item)) {
            auto temp_node = visitStatement(statement);
            insert_ast_node(compileUnitNode, std::any_cast<ast_node *>(temp_node));
        } else {
            (void) assert(false);
        }
    }

    return compileUnitNode;
}

/// @brief 非终结运算符funcDef的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitFuncDef(CalculatorParser::FuncDefContext * ctx)
{
    // funcDef : T_FUNC T_ID '(' funcFormalParams? ')' block;

    // 函数名
    std::string funcName = ctx->T_ID()->getText();

    // 获取行号
    auto token = ctx->getStart();
    unsigned int lineno = token->getLine();

    // 形参结点
    ast_node * formalParamsNode = nullptr;
    if (ctx->funcFormalParams()) {
        formalParamsNode = std::any_cast<ast_node *>(visitFuncFormalParams(ctx->funcFormalParams()));
    }

    // 遍历block语法结点
    auto blockNode = std::any_cast<ast_node *>(visitBlock(ctx->block()));

    return create_func_def(lineno, funcName.c_str(), blockNode, formalParamsNode);
}

/// @brief 非终结运算符funcFormalParams的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitFuncFormalParams(CalculatorParser::FuncFormalParamsContext * ctx)
{
    // 识别 funcFormalParams : funcFormalParam (',' funcFormalParam)*;

    ast_node * paramsNode = create_contain_node(ast_operator_type::AST_OP_FUNC_FORMAL_PARAMS);

    // 会存在多个funcFormalParam
    for (auto & paramCtx: ctx->funcFormalParam()) {

        // 遍历参数
        auto param = visitFuncFormalParam(paramCtx);

        insert_ast_node(paramsNode, std::any_cast<ast_node *>(param));
    }

    return paramsNode;
}

/// @brief 非终结运算符funcFormalParam的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitFuncFormalParam(CalculatorParser::FuncFormalParamContext * ctx)
{
    // funcFormalParam : funcBasicParam
    return visitFuncBasicParam(ctx->funcBasicParam());
}

/// @brief 非终结运算符funcBasicParam的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitFuncBasicParam(CalculatorParser::FuncBasicParamContext * ctx)
{
    // funcBasicParam: T_ID

    // 参数名获取
    auto id = ctx->T_ID()->getText();

    // 获取行号
    auto token = ctx->getStart();
    unsigned int lineno = token->getLine();

    // 构建参数AST结点
    return create_func_formal_param(lineno, id.c_str());
}

/// @brief 非终结运算符block的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitBlock(CalculatorParser::BlockContext * ctx)
{
    // block : '{' blockItemList? '}';
    if (ctx->blockItemList()) {
        // 存在则返回
        return visitBlockItemList(ctx->blockItemList());
    } else {
        return nullptr;
    }
}

/// @brief 非终结运算符blockItemList的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitBlockItemList(CalculatorParser::BlockItemListContext * ctx)
{
    auto blockItemListNode = new_ast_node(ast_operator_type::AST_OP_BLOCK, nullptr);

    // blockItemList : blockItem +;
    // 正闭包 循环 至少一个blockItem
    for (auto blockItemCtx: ctx->blockItem()) {

        auto blockItem = visitBlockItem(blockItemCtx);

        insert_ast_node(blockItemListNode, std::any_cast<ast_node *>(blockItem));
    }

    return blockItemListNode;
}

/// @brief 非终结运算符blockItem的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitBlockItem(CalculatorParser::BlockItemContext * ctx)
{
    // blockItem : statement
    return visitStatement(ctx->statement());
}

/// @brief 非终结运算符statement中的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitStatement(CalculatorParser::StatementContext * ctx)
{
    // statement: T_ID '=' expr ';'  # assignStatement
    // | expr ';' # expressionStatement
    // | expr     # expressionShowStatement
    // | T_RETURN expr ';' # returnStatement
    if (Instanceof(assignCtx, CalculatorParser::AssignStatementContext *, ctx)) {
        return visitAssignStatement(assignCtx);
    } else if (Instanceof(exprCtx, CalculatorParser::ExpressionStatementContext *, ctx)) {
        return visitExpressionStatement(exprCtx);
    } else if (Instanceof(exprShowCtx, CalculatorParser::ExpressionShowStatementContext *, ctx)) {
        return visitExpressionShowStatement(exprShowCtx);
    } else {
        Instanceof(returnCtx, CalculatorParser::ReturnStatementContext *, ctx);
        return visitReturnStatement(returnCtx);
    }
}

/// @brief 非终结运算符statement的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitAssignStatement(CalculatorParser::AssignStatementContext * ctx)
{
    // statement: T_ID '=' expr ';' # assignStatement

    auto varId = ctx->T_ID()->getText();

    // 非终结符遍历
    auto expr = visitExpr(ctx->expr());
    auto exprNode = std::any_cast<ast_node *>(expr);

    // 创建一个AST_OP_ASSIGN类型的中间节点，孩子为T_ID和Expr
    return new_ast_node(ast_operator_type::AST_OP_ASSIGN,
                        new_ast_leaf_node(var_id_attr{strdup(varId.c_str()), -1}),
                        exprNode,
                        nullptr);
}

/// @brief 非终结运算符statement中的expressionStatement的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitExpressionStatement(CalculatorParser::ExpressionStatementContext * ctx)
{
    // statement: expr ';' # expressionStatement

    // 非终结符遍历
    auto expr = visitExpr(ctx->expr());
    auto exprNode = std::any_cast<ast_node *>(expr);

    // 创建一个AST_OP_EXPR类型的中间节点，孩子为expr
    return new_ast_node(ast_operator_type::AST_OP_EXPR, exprNode, nullptr);
}

/// @brief 非终结运算符statement中的expressionShowStatement的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitExpressionShowStatement(CalculatorParser::ExpressionShowStatementContext * ctx)
{
    // statement: expr # expressionStatement

    // 非终结符遍历
    auto expr = visitExpr(ctx->expr());
    auto exprNode = std::any_cast<ast_node *>(expr);

    // 创建一个AST_OP_EXPR类型的中间节点，孩子为expr
    return new_ast_node(ast_operator_type::AST_OP_EXPR_SHOW, exprNode, nullptr);
}

/// @brief 非终结运算符statement中的returnStatement的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitReturnStatement(CalculatorParser::ReturnStatementContext * ctx)
{
    // statement: T_RETURN expr ';' # returnStatement

    // 非终结符遍历
    auto expr = visitExpr(ctx->expr());
    auto exprNode = std::any_cast<ast_node *>(expr);

    return new_ast_node(ast_operator_type::AST_OP_RETURN_STATEMENT, exprNode, nullptr);
}

/// @brief 非终结运算符expr的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitExpr(CalculatorParser::ExprContext * ctx)
{
    // expr : addExp
    return visitAddExp(ctx->addExp());
}

/// @brief 非终结运算符addExp的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitAddExp(CalculatorParser::AddExpContext * ctx)
{
    // addExp : unaryExp (addOp unaryExp)*;

    if (ctx->addOp().empty()) {
        // 没有addOp运算符
        return visitUnaryExp(ctx->unaryExp()[0]);
    }

    ast_node *left, *right;

    // 存在addOp运算符，自
    auto opsCtxVec = ctx->addOp();

    // 有操作符，肯定会进循环，使得right设置正确的值
    for (int k = 0; k < (int) opsCtxVec.size(); k++) {

        // 获取运算符
        ast_operator_type op = std::any_cast<ast_operator_type>(visitAddOp(opsCtxVec[k]));

        if (k == 0) {

            // 左操作数
            left = std::any_cast<ast_node *>(visitUnaryExp(ctx->unaryExp()[k]));
        }

        // 右操作数
        right = std::any_cast<ast_node *>(visitUnaryExp(ctx->unaryExp()[k + 1]));

        // 新建结点作为下一个运算符的右操作符
        left = new_ast_node(op, left, right, nullptr);
    }

    return left;
}

/// @brief 非终结运算符addOp的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitAddOp(CalculatorParser::AddOpContext * ctx)
{
    // addOp : T_ADD | T_SUB
    if (ctx->T_ADD()) {
        return ast_operator_type::AST_OP_ADD;
    } else {
        return ast_operator_type::AST_OP_SUB;
    }
}

/// @brief 非终结运算符unaryExp的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitUnaryExp(CalculatorParser::UnaryExpContext * ctx)
{
    ast_node * node;

    // unaryExp : primaryExp | T_ID '(' realParamList? ')'
    if (ctx->T_ID()) {
        // 函数调用

        // 获取行号
        auto token = ctx->getStart();
        unsigned int lineno = token->getLine();

        // 实参列表
        auto paramsNode = std::any_cast<ast_node *>(visitRealParamList(ctx->realParamList()));

        // 用户自定义的含有实参的参数调用
        node = create_func_call(lineno, ctx->T_ID()->getText().c_str(), paramsNode);
    } else {
        node = std::any_cast<ast_node *>(visitPrimaryExp(ctx->primaryExp()));
    }

    return node;
}

/// @brief 非终结运算符primaryExp的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitPrimaryExp(CalculatorParser::PrimaryExpContext * ctx)
{
    ast_node * node;

    // primaryExp :  '(' expr ')' | T_DIGIT | lVal
    if (ctx->T_DIGIT()) {
        uint32_t val = (uint32_t) stoul(ctx->T_DIGIT()->getText());
        node = new_ast_leaf_node(digit_int_attr{val, 0});
    } else if (ctx->lVal()) {
        node = std::any_cast<ast_node *>(visitLVal(ctx->lVal()));
    } else {
        node = std::any_cast<ast_node *>(visitExpr(ctx->expr()));
    }

    return node;
}

/// @brief 非终结运算符realParamList的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitRealParamList(CalculatorParser::RealParamListContext * ctx)
{
    auto paramListNode = create_contain_node(ast_operator_type::AST_OP_FUNC_REAL_PARAMS);

    // realParamList : expr (',' expr)*;
    for (auto paramCtx: ctx->expr()) {

        auto param = visitExpr(paramCtx);
        auto paramNode = std::any_cast<ast_node *>(param);
        insert_ast_node(paramListNode, paramNode);
    }

    return paramListNode;
}

/// @brief 非终结运算符lVal的遍历
/// @param ctx CST上下文
std::any CalculatorCSTVisitor::visitLVal(CalculatorParser::LValContext * ctx)
{
    // lVal : T_ID;

    // 获取行号
    auto token = ctx->getStart();
    unsigned int lineno = token->getLine();

    return new_ast_leaf_node(var_id_attr{(char *) ctx->T_ID()->getText().c_str(), (int32_t) lineno});
}
