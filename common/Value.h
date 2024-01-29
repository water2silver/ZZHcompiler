﻿/**
 * @file value.h
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 变量以及常量等Value管理的头文件
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#pragma once

#include <cstdint>
#include <string>

#include "Common.h"
#include "ValueType.h"

/// @brief 变量、常量等管理的基类
class Value {

protected:

    /// @brief 新建一个常量名字，全局编号，没有考虑常量的重用
    /// \return 常量名字
    static std::string createConstVarName()
    {
        static uint64_t tempConstCount = 0; // 常量计数，默认从0开始

        return "%c" + std::to_string(tempConstCount++);
    }

    /// @brief 新建一个临时变量名，全局编号
    /// \return 临时变量名
    static std::string createTempVarName()
    {
        return "%t" + std::to_string(tempVarCount++);
    }

    /// @brief 新建一个局部变量名，全局编号，同临时变量一起编号
    /// \return 临时变量名
    static std::string createLocalVarName()
    {
        return "%l" + std::to_string(tempVarCount++);
    }

    /// @brief 新建一个内存变量名，全局变量，同临时变量一起编号
    /// @return 内存变量名
    static std::string createMemVarName()
    {
        return "%m" + std::to_string(tempVarCount++);
    }

    static uint64_t tempVarCount; // 临时变量计数，默认从0开始

protected:

    /// @brief 是否是常量
    bool _const = false;

    /// @brief 是否编译器内部产生的临时变量
    bool _temp = false;

    /// @brief 是否是用户定义的变量或标识符
    bool _var = false;

    /// @brief 是否是内存变量
    bool _mem = false;

public:

    /// @brief 变量名或内部标识的名字
    std::string name;

    /// @brief 类型
    ValueType type;

    /// @brief 整型常量的值
    int32_t intVal = 0;

    /// @brief 实数常量的值
    float realVal = 0;

    /// @brief 寄存器编号，-1表示没有分配寄存器
    int32_t regId = -1;

    /// @brief 变量在栈内的偏移量，对于全局变量默认为0，临时变量没有意义
    int32_t offset = 0;

    /// @brief 栈内寻找时基址寄存器名字
    int32_t baseRegNo = -1;

protected:

    /// @brief 默认实数类型的构造函数，初始值为0
    Value(BasicType _type) : type(_type)
    {
        // 这里不需要代码
    }

    /// @brief 构造函数
    /// @param _name 
    /// @param _type 
    Value(std::string _name, BasicType _type) : name(_name), type(_type)
    {
        // 不需要增加代码
    }

public:

    /// @brief 析构函数
    virtual ~Value()
    {
        // 如有资源清理，请这里追加代码
    }

    /// @brief 获取名字
    /// @return 变量名
    virtual std::string getName() const
    {
        return name;
    }

    /// @brief Value变字符串显示
    /// @return 字符串
    virtual std::string toString()
    {
        return type.toString() + " " + getName();
    }

    /// @brief 获取函数栈内偏移
    /// @return 栈内偏移
    int32_t getOffset()
    {
        return offset;
    }

    /// @brief 设置栈内偏移，需要放在栈内的变量有效
    /// @param 栈内偏移
    void setOffset(int32_t _offset)
    {
        offset = _offset;
    }

    /// @brief 检查变量是否是常量
    /// @return true: 是 false：不是
    bool isConst()
    {
        return _const;
    }

    /// @brief 检查变量是否是临时变量
    /// @return true: 是 false：不是
    bool isTemp()
    {
        return _temp;
    }

    /// @brief 检查变量是否是变量
    /// @return true: 是 false：不是
    bool isLocalVar()
    {
        return _var;
    }

    /// @brief 检查变量是否是变量
    /// @return true: 是 false：不是
    bool isMemVar()
    {
        return _mem;
    }

    /// @brief 根据变量类型获取所占空间的大小
    /// @return 空间大小，单位字节
    int32_t getSize()
    {
        // 这里假定为4字节
        // 实际需要根据ValueType获取大小
        if (type.type == BasicType::TYPE_INT) {
            // int 4字节
            return 4;
        } else if (type.type == BasicType::TYPE_FLOAT) {
            // float 4字节
            return 4;
        }

        // 其它类型暂不支持，统一返回-1
        return -1;
    }
};

/// @brief 临时变量类
class TempValue : public Value {

public:
    /// @brief 创建临时Value，用于保存中间IR指令的值
    /// \param val
    TempValue(BasicType _type) : Value(_type)
    {
        _temp = true;
        name = createTempVarName();
    }

    /// @brief 创建临时Value，用于保存中间IR指令的值
    /// \param val
    TempValue() : Value(BasicType::TYPE_FLOAT)
    {
        _temp = true;
        name = createTempVarName();
    }

    /// @brief 析构函数
    virtual ~TempValue() override
    {
        // 如有资源清理，请这里追加代码
    }
};

/// @brief 常量类
class ConstValue : public Value {

public:
    /// @brief 整数的临时变量值
    /// \param val
    ConstValue(int32_t val) : Value(BasicType::TYPE_INT)
    {
        _const = true;
        name = std::to_string(val);
        intVal = val;
    }

    /// @brief 实数的临时变量值
    /// \param val
    ConstValue(float val) : Value(BasicType::TYPE_FLOAT)
    {
        _const = true;
        name = std::to_string(val);
        realVal = val;
    }

    /// @brief 析构函数
    virtual ~ConstValue() override
    {
        // 如有资源清理，请这里追加代码
    }

    /// @brief 获取名字
    /// @return 
    virtual std::string getName() const override
    {
        if (type.type == BasicType::TYPE_INT) {
            return int2str(this->intVal);
        } else {
            return double2str(this->realVal);
        }
    }
};

/// @brief 变量类
class VarValue : public Value {

public:
    /// @brief 创建临时Value，用于保存中间IR指令的值
    /// \param val
    VarValue(std::string _name, BasicType _type) : Value(_name, _type)
    {
        _var = true;
    }

    /// @brief 创建临时Value，用于保存中间IR指令的值
    /// \param val
    VarValue(BasicType type) : Value(type)
    {
        name = createLocalVarName();
        _var = true;
    }

    /// @brief 析构函数
    virtual ~VarValue() override
    {
        // 如有资源清理，请这里追加代码
    }
};

/// @brief 变量类
class IntRegValue : public Value {

public:
    /// @brief 创建临时Value，用于保存中间IR指令的值
    /// \param val
    IntRegValue(std::string _name, int32_t _reg_no) : Value(_name, BasicType::TYPE_INT)
    {
        _var = true;
        regId = _reg_no;
    }

    /// @brief 析构函数
    virtual ~IntRegValue() override
    {
        // 如有资源清理，请这里追加代码
    }
};

/// @brief 内存值，必须在内存中
class MemValue : public Value {

public:

    /// @brief 创建内存Value，用于保存中间IR指令的值
    /// \param val
    MemValue(BasicType type) : Value(type)
    {
        name = createMemVarName();
        _mem = true;
    }

    /// @brief 析构函数
    virtual ~MemValue() override
    {
        // 如有资源清理，请这里追加代码
    }
};

/// @brief 寄存器Value，该值保存在寄存器中
class RegValue : public Value {

public:

    /// @brief 创建寄存器Value
    /// \param reg_no 寄存器编号
    RegValue(int reg_no, std::string reg_name) : Value(BasicType::TYPE_INT)
    {
        name = reg_name;
        regId = reg_no;
    }

    /// @brief 析构函数
    virtual ~RegValue() override
    {
        // 如有资源清理，请这里追加代码
    }
};