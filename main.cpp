﻿/**
 * @file main.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 主程序文件
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */

#include <string>
#include <iostream>

#ifdef _WIN32
#include <Windows.h>
#endif

#include "getopt-port.h"

#include "flex_lexer.h"
#include "bison_parser.h"
#include "graph.h"
#include "symboltable.h"
#include "IRGenerator.h"
#include "CodeSimulator.h"
#include "CodeGeneratorArm32.h"
#include "FlexBisonExecutor.h"
#include "Antlr4Executor.h"

 /// @brief 是否显示帮助信息
bool gShowHelp = false;

/// @brief 显示抽象语法树，非线性IR
int gShowAST = 0;

/// @brief 产生线性IR，线性IR，默认输出
int gShowLineIR = 0;

/// @brief 显示汇编
int gShowASM = 0;

/// @brief 直接运行，默认运行
int gDirectRun = 0;

/// @brief 输出中间IR，含汇编或者自定义IR等，默认输出线性IR
int gShowSymbol = 0;

/// @brief 前端分析器，默认选Flex和Bison
bool gFrontEndFlexBison = true;

/// @brief 前端分析器Antlr4，是否选中
bool gFrontEndAntlr4 = false;

/// @brief 输入源文件
std::string gInputFile;

/// @brief 输出文件，不同的选项输出的内容不同
std::string gOutputFile;

/// @brief 显示帮助
/// @param exeName 
void showHelp(const std::string & exeName)
{
    std::cout << exeName + " -S [-a | -I] [-A] [-o output] source" << std::endl;
    std::cout << exeName + " -R [-A] source" << std::endl;
}

/// @brief 参数解析与有效性检查
/// @param argc 
/// @param argv 
/// @return 
int ArgsAnalysis(int argc, char * argv[])
{
    int ch;
    const char options[] = "ho:SaIRA";

    opterr = 1;

lb_check:
    while ((ch = getopt(argc, argv, options)) != -1) {
        switch (ch) {
        case 'h':
            gShowHelp = true;
            break;
        case 'o':
            gOutputFile = optarg;
            break;
        case 'S':
            gShowSymbol = 1;
            break;
        case 'a':
            gShowAST = 1;
            break;
        case 'I':
            // 产生中间IR
            gShowLineIR = 1;
            break;
        case 'R':
            // 直接运行，默认运行
            gDirectRun = 1;
            break;
        case 'A':
            // 选用antlr4
            gFrontEndAntlr4 = true;
            gFrontEndFlexBison = false;
            break;
        default:
            return -1;
            break; /* no break */
        }
    }

    argc -= optind;
    argv += optind;

    if (argc >= 1) {

        // 第一次设置
        if (gInputFile.empty()) {

            gInputFile = argv[0];
        } else {
            // 重复设置则出错
            return -1;
        }

        if (argc > 1) {
            // 多余一个参数，则说明输入的源文件后仍然有参数要解析
            optind = 0;
            goto lb_check;
        }
    }

    // 必须指定输入文件和输出文件
    if (gInputFile.length() == 0) {
        return -1;
    }

    // 这三者只能指定一个
    int flag = gShowSymbol + gDirectRun;
    if (flag != 1) {
        // 运行与中间IR只能同时选择一个
        return -1;
    }

    flag = gShowLineIR + gShowAST;

    if (gShowSymbol) {

        if (flag == 0) {
            // 没有指定，则输出汇编指令
            gShowASM = 1;
        } else if (flag != 1) {
            // 线性中间IR、抽象语法树只能同时选择一个
            return -1;
        }
    } else {
        // 如果-S没有指定，但指定了-a等选项时，则失败
        if (flag != 0) {
            return -1;
        }
    }

    if (gOutputFile.empty()) {

        // 默认文件名
        if (gShowAST) {
            gOutputFile = "ast.png";
        } else if (gShowLineIR) {
            gOutputFile = "ir.txt";
        } else {
            gOutputFile = "asm.txt";
        }
    } else {

        // 直接运行时，文件不能指定
        if (gDirectRun) {
            return -1;
        }
    }

    return 0;
}

/// @brief 主程序
/// @param argc 
/// @param argv 
/// @return 
int main(int argc, char * argv[])
{
    int result;

#ifdef _WIN32
    SetConsoleOutputCP(65001);
#endif

    // 参数解析
    result = ArgsAnalysis(argc, argv);
    if (result < 0) {
        showHelp(argv[0]);
        return -1;
    }

    // 显示帮助
    if (gShowHelp) {
        showHelp(argv[0]);
        return 0;
    }

    FrontEndExecutor * fontEndExecutor;

    // 创建词法语法分析器
    if (gFrontEndFlexBison) {
        fontEndExecutor = new FlexBisonExecutor(gInputFile);
    } else if (gFrontEndAntlr4) {
        fontEndExecutor = new Antlr4Executor(gInputFile);
    } else {
        showHelp(argv[0]);
        return -1;
    }

    result = fontEndExecutor->run();
    if (!result) {
        printf("lex and synytax ananlys failed\n");
        return -1;
    }

    // 清理前端资源
    delete fontEndExecutor;

    if (gShowAST) {

        // 遍历抽象语法树，生成抽象语法树图片
        OutputAST(ast_root, gOutputFile);

        // 清理抽象语法树
        free_ast();
    } else {

        // 输出线性中间IR、计算器模拟解释执行、输出汇编指令
        // 都需要遍历AST转换成线性IR指令

        // 符号表，保存所有的变量以及函数等信息
        SymbolTable symtab;

        // 遍历抽象语法树产生线性IR，相关信息保存到符号表中
        IRGenerator ast2IR(ast_root, &symtab);
        result = ast2IR.run();
        if (!result) {
            printf("GenIR failed\n");
            return -1;
        }

        // 清理抽象语法树
        free_ast();

        if (gShowLineIR) {
            // 输出IR
            symtab.outputIR(gOutputFile);
        } else if (gShowASM) {
            // 输出汇编指令
            CodeGenerator * generator = new CodeGeneratorArm32(symtab);
            generator->run(gOutputFile);
            delete generator;
        } else {
            // 遍历中间代码指令，解释执行，得出运算结果
            CodeGenerator * generator = new CodeSimulator(symtab);
            generator->run("");
            delete generator;
        }

        // 清理符号表
        symtab.freeValues();
    }

    return 0;
}