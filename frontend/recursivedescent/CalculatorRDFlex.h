#pragma once

#include <stdio.h>

// 行号信息
extern int rd_line_no;

// 输入文件指针
extern FILE *rd_filein;

int rd_flex(void);
