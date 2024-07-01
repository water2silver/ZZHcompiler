/**
 * @file IROptimization.cpp
 * @author zzh 
 * @brief 用于中端优化
 * @version 0.1
 * @date 2024-6-21
 *
 * @copyright Copyright (c) 2024
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

/// @brief 对 + - * / mod 运算进行常数优化
/// @param node 
/// @return 
bool constantOptimization(ast_node * node,SymbolTable * symtab);

/// @brief 节点的两个子节点是否为常数或者常值节点
/// @param src1_node 
/// @param src2_node 
/// @return 两个子节点是否均为常值节点。
bool checkConstant(ast_node * src1_node, ast_node * src2_node);

/// @brief 得到节点的常数值
/// @param src_node 
/// @return 常数值
int getConstantValue(ast_node * src_node);