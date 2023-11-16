﻿/**
 * @file PlatformArm32.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief ARM32平台相关约定函数
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#include <string>

#include "PlatformArm32.h"

const std::string PlatformArm32::regName[PlatformArm32::maxRegNum] = {
    "r0",
    "r1",
    "r2",
    "r3",
    "r4",
    "r5",
    "r6",
    "r7",
    "r8", //用于加载操作数1,保存表达式结果
    "r9", //用于加载操作数2,写回表达式结果,立即数，标签地址
    "r10", //用于保存乘法结果，虽然mul r8,r8,r9也能正常执行，但是避免交叉编译提示错误！
    "fp", //r11,局部变量寻址
    "ip", //"r12"，临时寄存器
    "sp", //r13，栈指针
    "lr", //r14，链接寄存器
    "pc", //r15，程序计数器
};

/// @brief 循环左移两位
/// @param num 
void PlatformArm32::roundLeftShiftTwoBit(unsigned int & num)
{
    unsigned int overFlow = num & 0xc0000000;//取左移即将溢出的两位
    num = (num << 2) | (overFlow >> 30);//将溢出部分追加到尾部
}

/// @brief 判断num是否是常数表达式，8位数字循环右移偶数位得到
/// @param num 
/// @return 
bool PlatformArm32::__constExpr(int num)
{
    unsigned int new_num = (unsigned int)num;

    for (int i = 0; i < 16; i++) {

        if (new_num <= 0xff) {
            // 有效表达式
            return true;
        }

        //循环左移2位
        roundLeftShiftTwoBit(new_num);
    }

    return false;
}

/// @brief 同时处理正数和负数
/// @param num 
/// @return 
bool PlatformArm32::constExpr(int num)
{
    return __constExpr(num) || __constExpr(-num);
}

/// @brief 判定是否是合法的偏移
/// @param num 
/// @return 
bool PlatformArm32::isDisp(int num)
{
    return num < 4096 && num > -4096;
}

/// @brief 判断是否是合法的寄存器名
/// @param s 寄存器名字
/// @return 是否是
bool PlatformArm32::isReg(std::string s)
{
    return s == "r0" || s == "r1" || s == "r2" || s == "r3" || s == "r4"
        || s == "r5" || s == "r6" || s == "r7" || s == "r8" || s == "r9"
        || s == "r10" || s == "fp" || s == "ip" || s == "sp" || s == "lr"
        || s == "pc";
}
