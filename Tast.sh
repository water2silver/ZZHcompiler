#!/bin/bash
# 用于便捷测试抽象语法树的脚本
# 使用方式 ./Tast.sh test 
# test为测试输入文件、输出图片的名字 不需要包含txt后缀

# 检查是否提供了name参数
if [ "$#" -ne 1 ]; then
    echo "Usage: ./Tast <name>"
    exit 1
fi

# 获取name参数
name=$1

# 构建你要执行的命令
command="./cmake-build-debug/calculator -S -a -o ${name}.png tests/${name}.txt"

# 执行命令
$command