#include "RecursiveDescentExecutor.h"
#include "CalculatorRDFlex.h"
#include "CalculatorRDParser.h"

/// @brief 前端词法与语法解析生成AST
/// @return true: 成功 false：错误
bool RecursiveDescentExecutor::run()
{
    // 若指定有参数，则作为词法分析的输入文件
    rd_filein = fopen(filename.c_str(), "r");
    if (rd_filein == nullptr) {
        printf("Can't open file %s\n", filename.c_str());
        return false;
    }

    // 如果要查看LALR的移进与归约过程，请设置yydebug为1
    // yydebug = 1;

    // 词法、语法分析生成抽象语法树AST
    int result = rd_parse();
    if (0 != result) {
        printf("rd_parse failed\n");

        // 关闭文件
        fclose(rd_filein);

        return false;
    }

    // 关闭文件
    fclose(rd_filein);

    return true;
}