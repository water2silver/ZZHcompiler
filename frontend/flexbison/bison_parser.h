/**
 * @file bison_parser.h
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 语法分析共同头文件
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#pragma once

#include <cstdint>
#include <string>

 /// @brief 词法与语法通信的无符号整数字面量属性
typedef struct digit_int_attr {
    uint32_t val;     // 整数值
    int32_t lineno;  // 行号
} digit_int_attr;

/// @brief 词法与语法通信的单精度浮点数字面量属性
typedef struct digit_real_attr {
    float val;  // 实数值
    int32_t lineno;  // 行号
} digit_real_attr;

/// @brief 词法与语法通信的标识符（变量名、函数名等）
typedef struct var_id_attr {
    char id[256]; // 变量名
    int32_t lineno;   // 行号
} var_id_attr;

/// @brief yyparse的类型声明
#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse(void * YYPARSE_PARAM);
#else
int yyparse();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse(void);
#else
int yyparse();
#endif
#endif /* ! YYPARSE_PARAM */

#include "calculator_yacc.h"
