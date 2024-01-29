/// 手动实现的递归下降分析法实现代码

#include <cstring>

#include "AST.h"
#include "CalculatorRDFlex.h"
#include "CalculatorRDParser.h"


// 定义全局变量给词法分析使用，用于填充值
RDSType rd_lval;

// 语法分析过程中的错误数目
static int errno_num = 0;

// 语法分析过程中的LookAhead，指向下一个Token
static RDTokenType lookaheadTag = T_EMPTY;

// 定义两个宏，用于判断是否是对应的Token
#define _(T) || (lookaheadTag == T)
#define F(C) (lookaheadTag == C)

// lookahead指向下一个Token
static void advance()
{
    lookaheadTag = (RDTokenType) rd_flex();
}

/// flag若匹配则是否向前移动
static bool match(RDTokenType tag, bool flag = true)
{
    bool result = false;

    if (F(tag)) {
        result = true;

        // 若匹配，则向前获取下一个Token
        if (flag) {
            advance();
        }
    }

    return result;
}

static ast_node *expr();

// 语法错误输出
static void semerror(char *msg)
{
    errno_num++;
    printf("Line(%d): %s\n", rd_line_no, msg);
}

// Factor ->  T_LPAREN Expr T_RPAREN | T_DIGIT | T_ID
static ast_node *factor()
{
    ast_node *node;

    if (match(T_LPAREN)) {
        // Factor -> T_LPAREN Expr T_RPAREN识别

        node = expr();

        if (!match(T_RPAREN)) {
            // 出错
            semerror("缺少右括号");
        }
    } else if (F(T_DIGIT)) {
        // Factor -> T_DIGIT识别

        node = new_ast_leaf_node(rd_lval.integer_num.val, rd_lval.integer_num.lineno);

        advance();
    } else if (F(T_ID)) {
        // Factor -> T_ID识别

        node = new_ast_leaf_node(rd_lval.var_id.id, rd_lval.integer_num.lineno);

        advance();
    } else {
        // 出错
        if (F(T_MUL) _(T_ADD) _(T_RPAREN)) {
            semerror("缺少数值常量");
        } else {
            semerror("语法错误");
            advance();
        }

        // 产生一个默认的叶子节点，数值为0，能够继续分析后面的代码
        node = new_ast_leaf_node((uint32_t) 0, rd_lval.integer_num.lineno);
    }

    return node;
}

// Expr  -> Term { T_ADD Term }
static ast_node *expr()
{
    ast_node *left_node, *right_node;

    left_node = factor();

    // 闭包{ T_ADD Term }通过循环识别
    while (match(T_ADD)) {

        // 加法运算

        right_node = factor();

        // 创建加法节点
        left_node = new_ast_node(ast_operator_type::AST_OP_ADD, left_node, right_node);
    }

    return left_node;
}

// assignstatement  -> Expr assignstatementTail
// assignstatementTail -> T_ASSIGN Expr T_SEMICOLON | T_SEMICOLON | eps
static ast_node *assignstatement()
{
    ast_node *left_node, *right_node;

    left_node = expr();

    if (match(T_ASSIGN)) {

        // 如果是等号，则说明是赋值语句，这时要求左侧的变量必须是左值，也就是变量
        if (left_node->node_type == ast_operator_type::AST_OP_LEAF_VAR_ID) {

            // 合法的赋值左侧

            right_node = expr();

            if (!F(T_ERR) && !match(T_SEMICOLON)) {
                semerror("赋值语句后没有分号");
            }

            left_node = new_ast_node(ast_operator_type::AST_OP_ASSIGN, left_node, right_node, nullptr);
        } else {

            // 非法的赋值右侧
            semerror("赋值运算符的左侧不是变量名");

            return left_node;
        }
    } else if (match(T_SEMICOLON)) {

        // 不显示值的表达式语句
        left_node = new_ast_node(ast_operator_type::AST_OP_EXPR, left_node, nullptr);
    } else {

        // 要显示值的表达式语句
        left_node = new_ast_node(ast_operator_type::AST_OP_EXPR_SHOW, left_node, nullptr);
    }

    return left_node;
}

// statement  -> assignstatement
static ast_node *statement()
{
    return assignstatement();
}

// Input -> {  }
static void input()
{
    // 创建AST的根节点
    ast_root = new_ast_node(ast_operator_type::AST_OP_BLOCK, nullptr);

    for (;;) {
        if (F(T_LPAREN) _(T_DIGIT) _(T_ID)) {
            ast_node *statement_node = statement();
            ast_root->sons.push_back(statement_node);
            statement_node->parent = ast_root;
        } else if (F(T_EOF)) {
            // 文件解析完毕
            break;
        } else {
            // 这里发现错误
            break;
        }
    }
}

int rd_parse()
{
    // lookahead指向第一个Token
    advance();

    input();

    if (errno_num != 0) {
        return -1;
    }

    return 0;
}
