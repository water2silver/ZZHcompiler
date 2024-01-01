/**
 * @file type.h
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 变量类型管理的头文件
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#pragma once

#include <string>

/// @brief 基本类型枚举类
enum class BasicType : int {
    TYPE_NONE, // 节点不存在类型
    TYPE_VOID, // void型，仅用于函数返回值
    TYPE_INT,  // 整型
    TYPE_FLOAT,// Float类型
    TYPE_MAX,  // 其它类型，未知类型
};

/// @brief 目前只考虑基本类型，数组类型后面可定义
class ValueType {

public:
    BasicType type;

    ValueType();

    ValueType(BasicType _type);

    std::string toString();
};
