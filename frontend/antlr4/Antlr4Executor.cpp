#include <iostream>

#include "Antlr4Executor.h"
#include "CalculatorLexer.h"
#include "CalculatorCSTVisitor.h"
#include "ast.h"

/// @brief 前端词法与语法解析生成AST
/// @return true: 成功 false：错误
bool Antlr4Executor::run()
{
    std::ifstream ifs;
    ifs.open(filename);
    if (!ifs.is_open()) {
        std::cout << "Can't open file " << filename << std::endl;
        return false;
    }

    // antlr4的输入流类实例
    antlr4::ANTLRInputStream input{ ifs };

    // 词法分析器实例
    CalculatorLexer lexer{ &input };

    // 词法分析器实例转化成记号(Token)流
    antlr4::CommonTokenStream tokenStream{ &lexer };

    // 利用antlr4进行分析，从compileUnit开始分析输入字符串
    CalculatorParser parser{ &tokenStream };

    // 从具体语法树的根结点进行深度优先遍历，生成抽象语法树
    auto root = parser.compileUnit();
    if (!root) {
        std::cout << "antlr4 analys failed " << std::endl;
        return false;
    }

    /// 新建遍历器对具体语法树进行分析，产生抽象语法树
    CalculatorCSTVisitor visitor;

    // 遍历产生抽象语法树
    ast_root = visitor.run(root);

    return true;
}