/// 手动实现的词法分析代码

#include <cctype>
#include <cstdio>
#include <cstring>
#include <string>

#include "CalculatorRDParser.h"
#include "Common.h"

int rd_line_no = 1;

FILE *rd_filein;

int rd_flex()
{
    int c;

    /* Skip white space. */
    while ((c = fgetc(rd_filein)) == ' ' || c == '\t' || c == '\n') {

        if (c == '\n') {
            rd_line_no++;
        }
    }

    // file end
    if (c == EOF) {
        /* Return end-of-input. */
        return 0;
    }

    /* Process numbers. */
    if (isdigit(c)) {

        rd_lval.integer_num.lineno = rd_line_no;
        rd_lval.integer_num.val = c - '0';

        while (isdigit(c = fgetc(rd_filein))) {
            rd_lval.integer_num.val = rd_lval.integer_num.val * 10 + c - '0';
        }

        ungetc(c, rd_filein);

        c = T_DIGIT;
    } else if (c == '*') {
        c = T_MUL;
    } else if (c == '+') {
        c = T_ADD;
    } else if (c == '(') {
        c = T_LPAREN;
    } else if (c == ')') {
        c = T_RPAREN;
    } else if (c == '=') {
        c = T_ASSIGN;
    } else if (c == ';') {
        c = T_SEMICOLON;
    } else if (isLetterUnderLine(c)) {

        rd_lval.var_id.lineno = rd_line_no;

        std::string name;

        do {
            // 记录字符
            name.push_back(c);
            c = fgetc(rd_filein);
        } while (isLetterDigitalUnderLine(c));

        ungetc(c, rd_filein);

        strncpy(rd_lval.var_id.id, name.c_str(), sizeof(rd_lval.var_id.id));

        c = T_ID;
    } else {
        printf("Line(%d): Invalid char %c\n", rd_line_no, c);
        c = -1;
    }

    /* Return a single char. */
    return c;
}
