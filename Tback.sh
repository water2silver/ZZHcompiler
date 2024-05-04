#!/bin/bash
# 用于便捷测试生成IR的脚本
# 使用方式 ./Tir.sh test 
# test为测试输入文件、输出图片的名字 不需要包含txt后缀
# chmod +x Tir.sh

# 检查是否提供了name参数
if [ "$#" -ne 1 ]; then
    echo "Usage: ./Tast <name>"
    exit 1
fi

# 获取name参数
name=$1

# 构建你要执行的命令
command="./cmake-build-debug/calculator -S -o result/${name}.txt tests/${name}.txt"

# 执行命令
$command