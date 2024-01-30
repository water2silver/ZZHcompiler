#pragma once

#include "AST.h"
#include "AttrType.h"

enum RDTokenType {
    T_EMPTY = -2,
    T_ERR = -1,
    T_EOF = 0,

    T_DIGIT,
    T_ID,
    T_ADD,
    T_SUB,
    T_LPAREN,
    T_RPAREN,
    T_ASSIGN,
    T_SEMICOLON,
    T_FUNC,
    T_RETURN,
};

typedef union RDSType {
    ast_node *node;
    digit_int_attr integer_num;// 整型字面量
    digit_real_attr float_num; // 实数字面量
    var_id_attr var_id;        // 标识符（变量名）
} RDSType;

extern RDSType rd_lval;

int rd_parse();
