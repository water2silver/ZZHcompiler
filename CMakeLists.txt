cmake_minimum_required(VERSION 3.12)

# 设置工程属性，如版本，开发语言等
project(calculator VERSION 1.0.0.2 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

# 禁止MSVC编译时出现C4819警告
if(MSVC)
    add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
    add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")
endif()

# graphviz查找文件
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/CMake)

# 查找Java
find_package(Java REQUIRED)

# 查找graphviz库是否在系统中安装，若安装则设置一系列的变量，如LIBGVC_INCLUDE_DIRS等
find_package(Graphviz REQUIRED)

# 查找flex工具，找不到则出错，注意设置PATHS的路径；FLEX_EXECUTABLE记录flex程序的位置
# 请优先使用find_package，不行用find_program，指定flex的位置
# 注释下一行可查看都在哪里查找路径了
#set(CMAKE_FIND_DEBUG_MODE TRUE)
#find_package(FLEX REQUIRED)
find_program(FLEX_EXECUTABLE NAMES flex win_flex PATHS C:/ToolsApp/msys64/usr/bin REQUIRED)

message(STATUS ${FLEX_EXECUTABLE})

# 检查查找的flex是否时win_flex
string(FIND ${FLEX_EXECUTABLE} "win_flex.exe" result)
if(NOT ${result} EQUAL -1)
    set(WINFLEX_FOUND True)
else()
    set(WINFLEX_FOUND False)
endif()

# 查找bison工具，找不到则出错，注意设置PATHS的路径；BISON_EXECUTABLE记录bison程序的位置
# 请优先使用find_package，不行用find_program，指定bion的位置
# find_package(BISON REQUIRED)
find_program(BISON_EXECUTABLE NAMES bison win_bison PATHS C:/ToolsApp/msys64/usr/bin REQUIRED)
message(STATUS ${BISON_EXECUTABLE})

# 检查查找的flex是否时win_flex
string(FIND ${BISON_EXECUTABLE} "win_bison.exe" result)
if(NOT ${result} EQUAL -1)
    set(WINBISON_FOUND True)
else()
    set(WINBISON_FOUND False)
endif()

# 查找antlr头文件的位置，也可以直接设置ANTLR4_INCLUDE_DIR为antlr4-runtime.h头文件所在的路径
find_path(ANTLR4_INCLUDE_DIR NAMES antlr4-runtime.h PATH_SUFFIXES antlr4-runtime)

# 查找antlr4-runtime库的位置
find_library(ANTLR4_LIBRARIES NAMES antlr4-runtime)

# 查找antlr-4.12.0-complete的位置
find_program(ANTLR4_JAR NAMES antlr-4.12.0-complete.jar)
message(STATUS ${ANTLR4_JAR})

# 配置创建一个可执行程序，以及该程序所依赖的所有源文件、头文件等
add_executable(${PROJECT_NAME}

    main.cpp

        frontend/AST.cpp
        frontend/AST.h
        frontend/Graph.cpp
        frontend/Graph.h
    frontend/FrontEndExecutor.h

    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison/calculator_lex.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison/calculator_lex.h
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison/calculator_yacc.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison/calculator_yacc.h
    frontend/flexbison/FlexBisonExecutor.h
    frontend/flexbison/FlexBisonExecutor.cpp
    frontend/flexbison/flex_lexer.h
    frontend/flexbison/bison_parser.h

    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorBaseVisitor.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorBaseVisitor.h
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorVisitor.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorVisitor.h
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorLexer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorLexer.h
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorParser.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorParser.h
    frontend/antlr4/CalculatorCSTVisitor.cpp
    frontend/antlr4/CalculatorCSTVisitor.h
    frontend/antlr4/Antlr4Executor.cpp
    frontend/antlr4/Antlr4Executor.h
    
    backend/CodeGenerator.cpp
    backend/CodeGenerator.h
    backend/CodeGeneratorAsm.cpp
    backend/CodeGeneratorAsm.h

    backend/simulation/CodeSimulator.cpp
    backend/simulation/CodeSimulator.h

    backend/arm32/ILocArm32.cpp
    backend/arm32/ILocArm32.h
    backend/arm32/InstSelectorArm32.cpp
    backend/arm32/InstSelectorArm32.h
    backend/arm32/PlatformArm32.cpp
    backend/arm32/PlatformArm32.h
    backend/arm32/CodeGeneratorArm32.cpp
    backend/arm32/CodeGeneratorArm32.h

        common/Common.cpp
        common/Common.h
        common/ValueType.h
        common/ValueType.cpp
        common/Value.cpp
        common/Value.h
        common/Function.cpp
        common/Function.h
        common/SymbolTable.cpp
        common/SymbolTable.h

    DragonIR/IRInst.h
    DragonIR/IRInst.cpp
    DragonIR/IRCode.h
    DragonIR/IRCode.cpp
    DragonIR/IRGenerator.cpp
    DragonIR/IRGenerator.h

    utils/getopt-port.cpp
    utils/getopt-port.h
)

# 设置语言标准，可根据需要调整
set_target_properties(${PROJECT_NAME} PROPERTIES
    CXX_STANDARD 17
    CXX_EXTENSIONS OFF
    CXX_STANDARD_REQUIRED ON
)

# -Wno-unused-function避免无用函数警告
# -Wno-write-strings避免c++提示字符串常量转换char*的警告
# -Werror强制警告当作错误处理
# -Wall尽可能多的让编译器提示警告和错误
# __STDC_VERSION__的目的是警告产生的flex源文件出现INT8_MAX警告等
if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE _CRT_SECURE_NO_WARNINGS __STDC_VERSION__=199901)
else()
    target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Werror -Wno-write-strings -Wno-unused-function)
endif()

# 引入graphviz库的头文件，防止编译时找不到graphviz的头文件
target_include_directories(${PROJECT_NAME} PRIVATE 
    ${Graphviz_INCLUDE_DIRS}
    ${ANTLR4_INCLUDE_DIR}
    common
    utils
    frontend
    frontend/antlr4
    frontend/flexbison
    DragonIR
    backend
    backend/simulation
    backend/arm32
)

# 指定graphviz的库文件以及位置，防止链接时找不到graphviz的库函数
target_link_libraries(${PROJECT_NAME} PRIVATE ${Graphviz_LIBRARIES})

# 指导antlr4的库名，防止链接时找不到antlr4-runtime
target_link_libraries(${PROJECT_NAME} PRIVATE ${ANTLR4_LIBRARIES})

# 采用win_flex产生词法文件时减少OS系统差异的问题
if(CMAKE_HOST_WIN32)
    if(WINFLEX_FOUND)
        set(FLEX_OPTION "--wincompat")
    else()
        set(FLEX_OPTION "--nounistd")
    endif()
endif()

# 通过flex产生词法分析源代码
add_custom_command(
    OUTPUT
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison/calculator_lex.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison/calculator_lex.h
    COMMAND
    ${FLEX_EXECUTABLE} ${FLEX_OPTION} -o calculator_lex.cpp --header-file=calculator_lex.h calculator.l
    DEPENDS
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison/calculator.l
    WORKING_DIRECTORY
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison
    
)

# Window版和Linux版产生头文件时选项名字不一样，根据不同系统设置
if(CMAKE_HOST_WIN32)
    if(WINBISON_FOUND)
        set(BISON_HEADFILE_OPTION "--defines")
    else()
        set(BISON_HEADFILE_OPTION "--header")
    endif()
else()
    set(BISON_HEADFILE_OPTION "--defines")
endif()

# 通过bison生成语法分析源代码
add_custom_command(
    OUTPUT
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison/calculator_yacc.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison/calculator_yacc.h
    COMMAND
    ${BISON_EXECUTABLE} -d --debug -o calculator_yacc.cpp ${BISON_HEADFILE_OPTION}=calculator_yacc.h calculator.y
    DEPENDS
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison/calculator.y
    WORKING_DIRECTORY
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/flexbison
)

# 通过antlr4.12.0生成词法与语法分析源代码
# WORKING_DIRECTORY指定工作目录时Mac平台有问题，因此使用绝对地址
add_custom_command(
    OUTPUT
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorBaseVisitor.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorBaseVisitor.h
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorVisitor.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorVisitor.h
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorLexer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorLexer.h
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorParser.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/CalculatorParser.h
    COMMAND
    java -jar ${ANTLR4_JAR} -Dlanguage=Cpp -no-listener -visitor -o ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4 ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/Calculator.g4
    DEPENDS
    ${CMAKE_CURRENT_SOURCE_DIR}/frontend/antlr4/Calculator.g4
)
