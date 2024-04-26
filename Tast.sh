#!/bin/bash

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