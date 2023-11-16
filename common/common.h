/**
 * @file common.h
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 共同函数的头文件
 * @version 0.1
 * @date 2023-09-24
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#pragma once

#include <string>

std::string int2str(uint64_t num);

std::string double2str(double num);

bool isLetter(char ch);
bool isDigital(char ch);
bool isLetterDigital(char ch);
bool isLetterDigitalUnderLine(char ch);
bool isLetterUnderLine(char ch);

/// @brief 删除前后空格
/// @param str 要处理的字符串
/// @return 处理后的字符串
std::string trim(const std::string &str);