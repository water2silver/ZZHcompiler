# 计算器

## 主要功能

命令格式：
calculator -S [-A | -D] [-a | -I] [-o output] source
calculator -R [-A | -D] source

选项-S -a 借助 flex+bison 产生抽象语法树 AST

选项-S -I 借助 flex+bison 产生线性 IR

选项-o output 可把输出的抽象语法树或线性 IR 保存到文件中

选项-R 可直接运行得出计算器结果

选项-A 指定时可通过 antlr4 进行词法与语法分析
选项-D 指定时可通过递归下降分析法实现语法分析，词法分析手动实现
不指定-A 或-D 选项时默认采用 Flex/Bison 实现词法与语法分析

## 源代码构成

frontend 目录下的源代码实现编译器的前端，有三种：flex/bison、antlr4、递归下降分析法

backend 目录下的源代码实现编译器的后端，有两种：解释执行或转换成 ARM32 汇编

DragonIR 目录下的源代码描述规定的线性 IR

common 目录下的源代码描述符号表或共通的代码

utils 目录下的源代码实现个别函数的操作系统差异

tests 目录下放置了一些简单的测试用例代码

thirdparty 目录下放置了一些第三方的工具，如 antlr4.12.0

## 计算器使用方法

### Linux 或 Mac 或 msys2 平台

./cmake-build-debug/calculator -S -a test.txt

./cmake-build-debug/calculator -S -a -A test.txt

./cmake-build-debug/calculator -S -a -D test.txt

./cmake-build-debug/calculator -S -a -o test.pdf test.txt

./cmake-build-debug/calculator -S -a -A -o test.pdf test.txt

./cmake-build-debug/calculator -S -a -D -o test.pdf test.txt

./cmake-build-debug/calculator -S -I test.txt

./cmake-build-debug/calculator -S -I -A test.txt

./cmake-build-debug/calculator -S -I -D test.txt

./cmake-build-debug/calculator -S -I -o ir.txt test.txt

./cmake-build-debug/calculator -S -I -A -o ir.txt test.txt

./cmake-build-debug/calculator -S -I -D -o ir.txt test.txt

./cmake-build-debug/calculator -R test.txt

./cmake-build-debug/calculator -R -A test.txt

./cmake-build-debug/calculator -R -D test.txt

### Windows 平台（cmd 命令行）

.\cmake-build-debug\calculator.exe -S -a test.txt

.\cmake-build-debug\calculator.exe -S -a -A test.txt

.\cmake-build-debug\calculator.exe -S -a -D test.txt

.\cmake-build-debug\calculator.exe -S -a -o test.pdf test.txt

.\cmake-build-debug\calculator.exe -S -a -A -o test.pdf test.txt

.\cmake-build-debug\calculator.exe -S -a -D -o test.pdf test.txt

.\cmake-build-debug\calculator.exe -S -I test.txt

.\cmake-build-debug\calculator.exe -S -I -A test.txt

.\cmake-build-debug\calculator.exe -S -I -D test.txt

.\cmake-build-debug\calculator.exe -S -I -o ir.txt test.txt

.\cmake-build-debug\calculator.exe -S -I -A -o ir.txt test.txt

.\cmake-build-debug\calculator.exe -S -I -D -o ir.txt test.txt

.\cmake-build-debug\calculator.exe -R test.txt

.\cmake-build-debug\calculator.exe -R -A test.txt

.\cmake-build-debug\calculator.exe -R -D test.txt

## 前端工具

### Flex 与 Bison

#### Windows

主要给 Visual Studio 用

win_flex -o calculator_lex.cpp --wincompat calculator.l

win_bison -o calculator.cpp calculator.y

#### MinGW、Linux or Mac

flex -o calculator_lex.cpp --header-file=calculator_lex.h calculator.l

bison -o calculator_yacc.cpp --header=calculator_yacc.h -d calculator.y

请注意 bison 的--header 在某些平台上可能是--defines，要根据情况调整指定。

### Antlr 4.12.0

要事先需要安装 java15 以上版本的 JDK

编写 g4 文件然后通过 antlr 生成 C++代码，用 Visitor 模式。

```shell
java -jar tools/antlr-4.12.0-complete.jar -Dlanguage=Cpp -no-listener -visitor -o frontend/antlr4 frontend/antlr4/Calculator.g4
```

C++使用 antlr 时需要使用 antlr 的头文件和库，在 msys2 下可通过如下命令安装 antlr 4.12.0 版即可。

```shell
pacman -U https://mirrors.ustc.edu.cn/msys2/mingw/mingw64/mingw-w64-x86_64-antlr4-runtime-cpp-4.12.0-1-any.pkg.tar.zst
```

## 工具安装

### vscode 安装

请从官网下载 vscode 并安装，下载网址：<https://code.visualstudio.com/Download>

配置文件可参考 tools/vscode/settings.json

插件请参考 tools/vscode/extensions.txt

### msys2 安装与软件安装

首先从中科大的镜像源中下载安装 msys2，下载网址：<http://mirrors.ustc.edu.cn/msys2/distrib/msys2-x86_64-latest.exe>

其次，进入安装路径下，执行 clang64.exe 程序，执行 tools/msys2.sh 进行相关软件的安装。

### Windows 上 WSL 安装 Ubuntu 与软件安装

通过 wsl 安装 ubuntu 虚拟机并配置环境，详细见 tools/wsl.md 文件。

用 vscode + wsl 方式连接开发。

### VMware/VirtualBox/Qemu 安装 Ubuntu 与软件安装

可通过 VMware/VirtualBox/Qemu 等虚拟机软件安装 Ubuntu 系统，然后以 root 用户进入系统后请执行 tools/ubuntu.sh 配置开发环境。

用 vscode + ssh 方式连接开发。

### Docker Desktop 安装 Ubuntu 与软件安装

可通过 Docker Desktop Installer 安装 Docker 运行环境，Docker 配置运行详细见 tools/docker.md 文件。

## 计算器强化

在 CPU 中，整数与实数不能直接进行数学运算，整数靠 ALU 进行运算，实数靠浮点协处理器或者数学库进行运算，
所以整数需要先转换成实数，然后做实数运算。

因此，对于线性 IR 指令，必须区分整数运算与实数运算。例如加法，IR 指令必须区分为整数加法和实数加法。
还需要追加整数转换为实数的指令，需要时追加实数转整数的指令。

## doxygen 生成文档

前提要安装软件 doxygen 和 graphviz 程序

svg 时需要安装 mingw-w64-clang-x86_64-pdf2svg

请修改配置文件 Doxygen.config，然后执行如下的命令：

```shell
doxygen Doxygen.config
```

### 生成 pdf

前提要安装 texlive，mac 系统安装 MacTex。

如果包含有中文字符，则必须设置 Doxygen.config 中的 OUTPUT_LANGUAGE 为 chinese

执行如下的脚本指令：

```shell
cd latex
make
```

## 后端编译与运行

tests 目录下存放了一些简单的测试用例。其中 test1.c 是 test1.txt 的 C 语言版本实现，用于运行的对比。

由于 qemu 的用户模式在 Window 系统下不支持，因此要么在真实的开发板上运行，或者用 Linux 系统下的 qemu 来运行。

这里介绍用 Linux 系统下的 qemu 来运行。

### 生成 ARM32 的汇编

```shell
# 通过计算器翻译 test1.txt 成 ARM32 汇编
./cmake-build-debug/calculator -S -o tests/test1.s tests/test1.txt
# 把 test1-1.c 通过 arm 版的交叉编译器 gcc 翻译成汇编
arm-linux-gnueabihf-gcc -S -g --include tests/std.h -o tests/test1-1.s tests/test1-1.c
```

如果不指定--include tests/std.h，编译会提示函数 putint 没有声明的警告信息。

test1-1.c 是脚本型语言 test1.txt 的 C 语言表达。

### 生成可执行程序

通过 gcc 的 arm 交叉编译器对生成的汇编进行编译，生成可执行程序。

```shell
# 通过 ARM gcc 编译器把汇编程序翻译成可执行程序，目标平台 ARM32
arm-linux-gnueabihf-gcc -static -g -o tests/test1 tests/std.c tests/test1.s
# 通过 ARM gcc 编译器把汇编程序翻译成可执行程序，目标平台 ARM32
arm-linux-gnueabihf-gcc -static -g -o tests/test1-1 tests/std.c tests/test1-1.s
```

有以下几个点需要注意：

1. 这里必须用-static 进行静态编译，不依赖动态库，否则后续通过 qemu-arm-static 运行时会提示动态库找不到的错误
2. 生成的汇编中包含了 内置 putint 等函数的调用，用来进行数据的输出或输出等，因此在通过 arm-linux-gnueabihf-gcc 进行交叉编译时，需要和 std.c 一起进行编译链接才可以。
3. 可通过网址<https://godbolt.org/>输入 C 语言源代码后查看各种目标后端的汇编。下图是选择 ARM GCC 11.4.0 的源代码与汇编对应。
![godbolt 效果图](figures/godbolt-test1-1-arm32-gcc.png)
4. 这些内置函数的具体实现放在了 tests/std.c 中，其原型在 tests/std.h 中，很简单，请自行查阅与理解。

### 运行可执行程序

借助用户模式的 qemu 来运行，arm 架构可使用 qemu-arm-static 命令。

```shell
qemu-arm-static tests/test1
qemu-arm-static tests/test1-1
```

这里可比较运行的结果，如果两者不一致，则计算器程序有问题。

## qemu 的用户模式

qemu 的用户模式下可直接运行交叉编译的用户态程序。这种模式只在 Linux 和 BSD 系统下支持，Windows 下不支持。

因此，为便于后端开发与调试，请用 Linux 系统进行程序的模拟运行与调试。

## qemu 用户程序调试

### 安装 gdb 调试器

```shell
sudo apt-get install -y gdb-multiarch
```

假定通过交叉编译出的程序为 tests/test1

首先通过用户态模式的 qemu 运行程序，其中-g 指定远程调试的端口，这里指定端口号为 1234，这样 qemu 会开启 gdb 的远程调试服务。

```shell
# 启动 gdb server，监视的端口号为 1234
qemu-arm-static -g 1234 tests/test1
```

其次，在另一个命令行界面启动 gdb 进行远程调试，需要指定远程机器的主机与端口。
注意这里的 gdb 要支持目标 CPU 的 gdb，而不是本地的 gdb。

```shell
gdb-multiarch tests/test1
# 输入如下的命令，远程连接 qemu 的 gdb server
target remote :1234
# 在 main 函数入口设置断点
b main
# 继续程序的运行
c
# 之后可使用 gdb 的其它命令进行单步运行与调试
```
