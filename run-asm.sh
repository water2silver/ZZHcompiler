#!/bin/bash

# 获取name参数

if [ "$#" -ne 1 ]; then
    echo "Usage: ./Tast <name>"
    exit 1
fi

name=$1

# command="./cmake-build-debug/calculator -S -a -o  result/${name}.png tests/${name}.c"
# $command
command="arm-linux-gnueabihf-gcc -static -g -o result/${name} tests/std.c result/${name}.s"
$command
command="qemu-arm-static result/${name}"
$command
command="echo $?"
$command