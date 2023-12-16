# 计算器

## 主要功能

命令格式:
calculator -S [-a | -I] [-A] [-o output] source
calculator -R [-A] source

选项-S -a借助flex+bison产生抽象语法树AST

选项-S -I借助flex+bison产生线性IR

选项-R可直接运行得出计算器结果

选项-A指定时可通过antlr4进行词法与语法分析

## 前端工具

### Flex与Bison

#### Windows

主要给Visual Studio用

win_flex -o calculator_lex.cpp --wincompat calculator.l

win_bison -o calculator.cpp calculator.y

#### MinGW、Linux or Mac

flex -o calculator_lex.cpp --header-file=calculator_lex.h calculator.l

bison -o calculator_yacc.cpp --header=calculator_yacc.h -d calculator.y

请注意bison的--header在某些平台上可能是--defines，要根据情况调整指定。

### Antlr 4.12.0

要事先需要安装java15以上版本的JDK

编写g4文件然后通过antlr生成C++代码，用Visitor模式。

```shell
java -jar tools/antlr-4.12.0-complete.jar -Dlanguage=Cpp -no-listener -visitor -o frontend/antlr4 frontend/antlr4/Calculator.g4
```

C++使用antlr时需要使用antlr的头文件和库，在msys2下可通过如下命令安装antlr 4.12.0版即可。

```shell
pacman -U https://mirrors.ustc.edu.cn/msys2/mingw/mingw64/mingw-w64-x86_64-antlr4-runtime-cpp-4.12.0-1-any.pkg.tar.zst
```

## 源代码构成

calculator.l 借助flex工具实现的词法分析器脚本源代码

calculator_lex.cpp 借助flex工具实现的词法分析器自动生成C语言源文件

calculator_lex.h 借助flex工具实现的词法分析器自动生成C语言头文件

calculator.y 借助bison工具实现的语法分析器脚本源代码

calculator_yacc.cpp 借助bison工具实现的语法分析器自动生成C语言源文件

calculator_yacc.h 借助bison工具实现的语法分析器自动生成C语言头文件

ast.cpp 抽象语法树创建所需要的函数

ast.h ast.cpp对应的头文件

graph.cpp 遍历抽象语法树利用graphviz生成图片

graph.h graph.cpp对应的头文件

symbol.cpp 符号表管理

value.h symbol.cpp对应的头文件

genIR.cpp 遍历抽象语法树产生线性IR

IRInst.cpp 线性IR指令类的实现

IRInst.h 线性IR指令类的头文件

IRCode.cpp 线性IR管理类的实现

IRCode.h 线性IR管理类的头文件

main.cpp 计算器程序的主函数

logo.ico 计算器程序的图标

resouce.rc.in Windows系统资源文件，要为GB2312编码或者GBK编码

test.txt 测试用例代码

## 计算器使用方法

### Linux平台

./cmake-build-debug/calculator -S -a test.txt

./cmake-build-debug/calculator -S -a -o test.pdf test.txt

./cmake-build-debug/calculator -S -I test.txt

./cmake-build-debug/calculator -S -I -o ir.txt test.txt

./cmake-build-debug/calculator -R test.txt

### Windows平台

.\cmake-build-debug\calculator.exe -S -a test.txt

.\cmake-build-debug\calculator.exe -S -a -o test.pdf test.txt

.\cmake-build-debug\calculator.exe -S -I test.txt

.\cmake-build-debug\calculator.exe -S -I -o ir.txt test.txt

.\cmake-build-debug\calculator.exe -R test.txt

## 工具安装

Windows下的msys2环境请执行msys2.sh来安装配置环境

Ubuntu系统下请执行ubuntu.sh

Mac系统下请执行mac.sh

### flex&bison

#### Windows(MinGW)

pacman -S flex bison

#### Linux(ubuntu)

sudo apt install flex bison

### graphviz

#### graphviz-clang64

pacman -S pkg-config mingw-w64-clang-x86_64-graphviz

#### graphviz-ubuntu

sudo apt install pkg-config graphviz libgraphviz-dev

## 计算器强化

在CPU中，整数与实数不能直接进行数学运算，整数靠ALU进行运算，实数靠浮点协处理器或者数学库进行运算，
所以整数需要先转换成实数，然后做实数运算。

因此，对于线性IR指令，必须区分整数运算与实数运算。例如加法，IR指令必须区分为整数加法和实数加法。
还需要追加整数转换为实数的指令，需要时追加实数转整数的指令。

## doxygen生成文档

前提要安装软件doxygen和graphviz程序

svg时需要安装mingw-w64-clang-x86_64-pdf2svg

请修改配置文件Doxygen.config，然后执行如下的命令:

```shell
doxygen Doxygen.config
```

### 生成pdf

前提要安装texlive，mac系统安装MacTex。

如果包含有中文字符，则必须设置Doxygen.config中的OUTPUT_LANGUAGE为chinese

执行如下的脚本指令：

```shell
cd latex
make
```

## 后端汇编

<https://godbolt.org/>

arm-none-eabi-gcc-12.2.0.exe -S  --specs=nosys.specs  -o test.s tests/test3.c
