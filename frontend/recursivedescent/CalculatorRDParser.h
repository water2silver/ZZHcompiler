#pragma once

#include "AST.h"
#include "AttrType.h"

enum RDTokenType {
    T_EMPTY = -2,
    T_ERR = -1,
    T_EOF = 0,

    T_DIGIT = 258,
    T_ID = 259,
    T_MUL = 260,
    T_ADD = 261,
    T_LPAREN = 262,
    T_RPAREN = 263,
    T_ASSIGN = 264,
    T_SEMICOLON = 265
};

typedef union RDSType {
    ast_node *node;
    digit_int_attr integer_num;// 整型字面量
    digit_real_attr float_num; // 实数字面量
    var_id_attr var_id;        // 标识符（变量名）
} RDSType;

extern RDSType rd_lval;

int rd_parse();
