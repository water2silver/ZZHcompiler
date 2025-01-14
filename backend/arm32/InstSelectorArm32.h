﻿/**
 * @file InstSelectorArm32.h
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 指令选择器-ARM32
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#pragma once

#include <map>
#include <vector>

#include "Function.h"
#include "ILocArm32.h"
#include "IRInst.h"
#include "PlatformArm32.h"

using namespace std;

/// @brief 指令选择器-ARM32
class InstSelectorArm32 {

    /// @brief 所有的IR指令
    std::vector<IRInst *> & ir;

    /// @brief 指令变换
    ILocArm32 & iloc;

    /// @brief 要处理的函数
    Function * func;

    /// @brief 形参列表
    std::vector<Value *> realArgs;
	
    /// @brief 寄存器与Value的映射。
    map<int, Value *> regValueMap;

protected:
    /// @brief 检查这个寄存器是不是参与我们分配的reg
    /// @param num
    /// @return 如果是，返回true
    bool isAlloctionReg(int num)
    {
        return (num >= 4) && (num <= 7);
    }

    /// @brief 指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate(IRInst * inst);

    /// @brief NOP翻译成ARM32汇编
    /// @param inst IR指令
    void translate_nop(IRInst * inst);

    /// @brief 函数入口指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate_entry(IRInst * inst);

    /// @brief 函数出口指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate_exit(IRInst * inst);

    /// @brief 赋值指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate_assign(IRInst * inst);

    /// @brief 变量定义语句，其实跟赋值语句差不多。
    /// @param inst IR指令。
    void translate_var_def(IRInst * inst);

    /// @brief Label指令指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate_label(IRInst * inst);

    /// @brief goto指令指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate_goto(IRInst * inst);

    /// @brief 整数加法指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate_add_int32(IRInst * inst);

    /// @brief 整数减法指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate_sub_int32(IRInst * inst);

	
    /// @brief 整数乘法指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate_mul_int32(IRInst * inst);

	/// @brief 整数除法指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate_div_int32(IRInst * inst);

    /// @brief 处理bc语句的label
    /// @param inst 
    void translate_if(IRInst * inst);

    /// @brief 跳转指令
    /// @param inst 
    void translate_branch(IRInst * inst);

    /// @brief 取负指令。
    /// @param inst 
    void translate_negative(IRInst * inst);

	/// @brief 取负指令。
    /// @param inst 
    void translate_positive(IRInst * inst);

    /// 比较计算的指令。

    /// @brief ＞指令计算。
    /// @param inst 
    void translate_greater_than(IRInst * inst);

	/// @brief ＞=指令计算。
    /// @param inst 
    void translate_greater_equal(IRInst * inst);

	/// @brief <指令计算。
    /// @param inst 
    void translate_less_than(IRInst * inst);

	/// @brief <=指令计算。
    /// @param inst 
    void translate_less_equal(IRInst * inst);

	/// @brief == 指令计算。
    /// @param inst 
    void translate_equal(IRInst * inst);

	/// @brief != 指令计算。
    /// @param inst 
    void translate_not_equal(IRInst * inst);

	/// @brief 非0的指令的计算
    /// @param inst 
    void translate_not_zero(IRInst * inst);

    /// @brief 比较指令
    /// @param inst 
    void translate_compare(	IRInst * inst,
							string operator_name = "cmp",
							Value * resVal = nullptr, 
							int op1_reg_no = REG_ALLOC_SIMPLE_SRC1_REG_NO,
							int op2_reg_no = REG_ALLOC_SIMPLE_SRC2_REG_NO);

    /// @brief 二元操作指令翻译成ARM32汇编
    /// @param inst IR指令
    /// @param operator_name 操作码
    /// @param rs_reg_no 结果寄存器号
    /// @param op1_reg_no 源操作数1寄存器号
    /// @param op2_reg_no 源操作数2寄存器号
    void translate_two_operator(IRInst * inst,
                                string operator_name,
                                int rs_reg_no = REG_ALLOC_SIMPLE_DST_REG_NO,
                                int op1_reg_no = REG_ALLOC_SIMPLE_SRC1_REG_NO,
                                int op2_reg_no = REG_ALLOC_SIMPLE_SRC2_REG_NO);

    /// @brief 函数调用指令翻译成ARM32汇编
    /// @param inst IR指令
    void translate_call(IRInst * inst);

    /// @brief IR翻译动作函数原型
    typedef void (InstSelectorArm32::*translate_handler)(IRInst *);

    /// @brief IR动作处理函数清单
    map<IRInstOperator, translate_handler> translator_handlers;

public:
    /// @brief 构造函数
    /// @param _irCode IR指令
    /// @param _func 函数
    /// @param _iloc 后端指令
    InstSelectorArm32(std::vector<IRInst *> & _irCode, ILocArm32 & _iloc, Function * _func);

    /// @brief 指令选择
    void run();
};
