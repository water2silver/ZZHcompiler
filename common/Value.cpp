/**
 * @file value.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 变量以及常量等Value管理
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#include "Value.h"

// 这里暂时不用，需要时Value相关类实现在这里编写

uint64_t Value::tempVarCount = 0; // 临时变量计数，默认从0开始

ArrayInfo::ArrayInfo(std::vector<int> array_dim)
{
    for (int i = 0; i < array_dim.size();i++)
	{
        this->dim.push_back(array_dim[i]);
        this->dim_name.append("[" + std::to_string(array_dim[i]) + "]");
    }
}

ArrayInfo::~ArrayInfo()
{

}

std::string ArrayInfo::getDimName()
{
    return this->dim_name;
}

std::vector<int> ArrayInfo::getDim()
{
    return this->dim;
}

/// @brief 得到数组总大小（可以容纳整数数量）
/// @return 
int ArrayInfo::getArraySize()
{
    int res = 1;
    for (int i = 0; i < this->dim.size();i++)
	{
        res *= dim[i];
    }
    return res == 1 ? 0 : res;
}

void Value::set_array_info(std::vector<int> array_dim)
{
    this->array_info = new ArrayInfo(array_dim);
}

