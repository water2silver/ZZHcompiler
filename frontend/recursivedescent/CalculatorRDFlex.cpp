/// 手动实现的词法分析代码

#include <cctype>
#include <cstdio>
#include <cstring>
#include <string>

#include "CalculatorRDParser.h"
#include "Common.h"

int rd_line_no = 1;

FILE *rd_filein;

/// @brief 关键字与Token类别的数据结构
struct KeywordToken {
    std::string name;
    enum RDTokenType type;
};

static KeywordToken allKeywords[] = {
        {"function", RDTokenType::T_FUNC},
        {"return", RDTokenType::T_RETURN},

};

/// @brief 在标识符中检查是否时关键字，若是关键字则返回对应关键字的Token，否则返回T_ID
/// @param id 标识符
/// @return Token
static RDTokenType getKeywordToken(std::string id)
{
    for (auto &keyword: allKeywords) {
        if (keyword.name == id) {
            return keyword.type;
        }
    }

    return RDTokenType::T_ID;
}

/// @brief 词法文法，获取下一个Token
/// @return  Token，值保存在rd_lval中
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
        return RDTokenType::T_EOF;
    }

    // TODO 请自行实现删除源文件中的注释，含单行注释和多行注释等

    /* Process numbers. */
    if (isdigit(c)) {

        rd_lval.integer_num.lineno = rd_line_no;
        rd_lval.integer_num.val = c - '0';

        while (isdigit(c = fgetc(rd_filein))) {
            rd_lval.integer_num.val = rd_lval.integer_num.val * 10 + c - '0';
        }

        ungetc(c, rd_filein);

        c = RDTokenType::T_DIGIT;
    } else if (c == '-') {
        c = RDTokenType::T_SUB;
    } else if (c == '+') {
        c = RDTokenType::T_ADD;
    } else if (c == '(') {
        c = RDTokenType::T_LPAREN;
    } else if (c == ')') {
        c = RDTokenType::T_RPAREN;
    } else if (c == '=') {
        c = RDTokenType::T_ASSIGN;
    } else if (c == ';') {
        c = RDTokenType::T_SEMICOLON;
    } else if (isLetterUnderLine(c)) {

        // 最长匹配标识符
        std::string name;

        do {
            // 记录字符
            name.push_back(c);
            c = fgetc(rd_filein);
        } while (isLetterDigitalUnderLine(c));

        ungetc(c, rd_filein);

        // 检查是否是关键字，若是则返回对应的Token，否则返回T_ID
        c = getKeywordToken(name);
        if (c == RDTokenType::T_ID) {

            // 设置ID的值
            strncpy(rd_lval.var_id.id, name.c_str(), sizeof(rd_lval.var_id.id));

            // 设置行号
            rd_lval.var_id.lineno = rd_line_no;
        }
    } else {
        printf("Line(%d): Invalid char %c\n", rd_line_no, c);
        c = -1;
    }

    /* Return a single char. */
    return c;
}
