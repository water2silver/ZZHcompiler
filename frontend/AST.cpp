/**
 * @file ast.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 抽象语法树管理
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#include <cstring>
#include <iostream>
#include <stdarg.h>

#include "AST.h"

/* 整个AST的根节点 */
ast_node * ast_root = nullptr;

/// @brief 创建指定节点类型的节点
/// @param _node_type 节点类型
/// @param _line_no 行号
ast_node::ast_node(ast_operator_type _node_type, int32_t _line_no) : node_type(_node_type), line_no(_line_no)
{
    type.type = BasicType::TYPE_MAX;
    parent = nullptr;
    val = nullptr;
}

/// @brief 构造函数
/// @param _type 节点值的类型
/// @param line_no 行号
ast_node::ast_node(ValueType _type, int32_t _line_no) : line_no(_line_no), type(_type)
{
    node_type = ast_operator_type::AST_OP_LEAF_TYPE;
    parent = nullptr;
    val = nullptr;
}

/// @brief 针对无符号整数字面量的构造函数
/// @param _value 无符号整数叶子节点的无符号值
/// @param _line_no 行号
ast_node::ast_node(uint32_t _value, int32_t _line_no) : line_no(_line_no), integer_val(_value)
{
    node_type = ast_operator_type::AST_OP_LEAF_LITERAL_UINT;
    type.type = BasicType::TYPE_INT;
    parent = nullptr;
    val = nullptr;
}

/// @brief 针对float字面量的构造函数
/// @param _value  float类型叶子节点的float值
/// @param _line_no 行号
ast_node::ast_node(float _value, int32_t _line_no) : line_no(_line_no), float_val(_value)
{
    node_type = ast_operator_type::AST_OP_LEAF_LITERAL_FLOAT;
    type.type = BasicType::TYPE_FLOAT;
    parent = nullptr;
    val = nullptr;
}

/// @brief 针对标识符ID的叶子构造函数
/// @param _name 标识符名字
/// @param _line_no 行号
ast_node::ast_node(const char * _name, int32_t _line_no) : line_no(_line_no), name(_name)
{
    node_type = ast_operator_type::AST_OP_LEAF_VAR_ID;
    // 目前这里默认设置为int类型
    type.type = BasicType::TYPE_INT;
}

/// @brief 判断是否是叶子节点
/// @param type 节点类型
/// @return true：是叶子节点 false：内部节点
bool isLeafNode(ast_operator_type type)
{
    bool is_leaf;

    switch (type) {
        case ast_operator_type::AST_OP_LEAF_LITERAL_UINT:
        case ast_operator_type::AST_OP_LEAF_LITERAL_FLOAT:
        case ast_operator_type::AST_OP_LEAF_VAR_ID:
        case ast_operator_type::AST_OP_FUNC_FORMAL_PARAM:
            is_leaf = true;
            break;
        default:
            is_leaf = false;
            break;
    }

    return is_leaf;
}

/// @brief 创建指定节点类型的节点
/// @param type 节点类型
/// @param  可变参数，可支持插入若干个孩子节点，自左往右的次序，最后一个孩子节点必须指定为nullptr。如果没有孩子，则指定为nullptr
/// @return 创建的节点
ast_node * new_ast_node(ast_operator_type type, ...)
{
    ast_node * nd = new ast_node((ast_operator_type) type, -1);

    va_list valist;

    /* valist指向传入的第一个可选参数 */
    va_start(valist, type);

    for (;;) {

        ast_node * node = va_arg(valist, ast_node *);
        if (nullptr == node) {
            break;
        }

        nd->sons.push_back(node);
        node->parent = nd;
    }

    /* 清理为 valist 保留的内存 */
    va_end(valist);

    return nd;
}

/// @brief 向父节点插入一个节点
/// @param parent 父节点
/// @param node 节点
ast_node * insert_ast_node(ast_node * parent, ast_node * node)
{
    node->parent = parent;
    parent->sons.push_back(node);
    return parent;
}

/// @brief 创建无符号整数的叶子节点
/// @param val 词法值
/// @param line_no 行号
ast_node * new_ast_leaf_node(uint32_t val, int32_t line_no)
{
    ast_node * nd = new ast_node(val, line_no);

    return nd;
}

/// @brief 创建实数的叶子节点
/// @param val 词法值
/// @param line_no 行号
ast_node * new_ast_leaf_node(float val, int32_t line_no)
{
    ast_node * nd = new ast_node(val, line_no);

    return nd;
}

/// @brief 创建标识符的叶子节点
/// @param val 词法值
/// @param line_no 行号
ast_node * new_ast_leaf_node(const char * name, int32_t line_no)
{
    ast_node * nd = new ast_node(name, line_no);

    return nd;
}

/// @brief 创建具备指定类型的节点
/// @param type 节点值类型
/// @param line_no 行号
/// @return 创建的节点
ast_node * new_ast_leaf_node(BasicType type, int32_t line_no)
{
    ast_node * nd = new ast_node(type, line_no);

    return nd;
}

/// @brief 递归清理抽象语法树
/// @param node AST的节点
void free_ast_node(ast_node * node)
{
    if (node) {

        for (auto child: node->sons) {

            free_ast_node(child);
        }

        // 清理孩子元素
        node->sons.clear();

        // 清理node资源
        delete node;
    }
}

/// @brief AST资源清理
void free_ast()
{
    free_ast_node(ast_root);
    ast_root = nullptr;
}

/// @brief 创建函数定义类型的内部AST节点
/// @param line_no 行号
/// @param func_name 函数名
/// @param block 函数体语句块
/// @param params 函数形参，可以没有参数
/// @return 创建的节点
ast_node * create_func_def(uint32_t line_no, const char * func_name, ast_node * block, ast_node * params)
{
    ast_node * nd = new ast_node(ast_operator_type::AST_OP_FUNC_DEF, line_no);
    nd->type.type = BasicType::TYPE_VOID;
    nd->name = func_name;

    // 如果没有参数，则创建参数节点
    if (!params) {
        params = new ast_node(ast_operator_type::AST_OP_FUNC_FORMAL_PARAMS);
    }

    // 如果没有函数体，则创建函数体，也就是语句块
    if (!block) {
        block = new ast_node(ast_operator_type::AST_OP_BLOCK);
    }

    nd->sons.push_back(params);
    params->parent = nd;

    nd->sons.push_back(block);
    block->parent = nd;

    return nd;
}

/// @brief 创建函数形式参数的节点
/// @param line_no 行号
/// @param param_name 参数名
/// @return 创建的节点
ast_node * create_func_formal_param(uint32_t line_no, const char * param_name)
{
    ast_node * nd = new ast_node(ast_operator_type::AST_OP_FUNC_FORMAL_PARAM, line_no);

    // 这里假定整型
    nd->type.type = BasicType::TYPE_INT;
    nd->name = param_name;

    return nd;
}

/// @brief 创建AST的内部节点
/// @param node_type 节点类型
/// @param first_param 第一个孩子节点
/// @return 创建的节点
ast_node * create_contain_node(ast_operator_type node_type, ast_node * first_param)
{
    ast_node * nd = new ast_node(node_type);

    if (first_param != NULL) {
        first_param->parent = nd;
        nd->sons.push_back(first_param);
    }

    return nd;
}

/// @brief 创建函数调用的节点
/// @param line_no 行号
/// @param func_name 被调用的函数名
/// @param params 实参节点
/// @return 创建的节点
ast_node * create_func_call(uint32_t line_no, const char * func_name, ast_node * params)
{
    ast_node * nd = new ast_node(ast_operator_type::AST_OP_FUNC_CALL, line_no);
    nd->type.type = BasicType::TYPE_MAX;
    nd->name = func_name;

    // 如果没有参数，则创建参数节点
    if (!params) {
        params = new ast_node(ast_operator_type::AST_OP_FUNC_REAL_PARAMS);
    }

    nd->sons.push_back(params);
    params->parent = nd;

    return nd;
}
