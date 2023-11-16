#include "FrontEndExecutor.h"

class Antlr4Executor : public FrontEndExecutor {
public:
    Antlr4Executor(std::string filename) : FrontEndExecutor(filename) {}
    virtual ~Antlr4Executor() {}

    /// @brief 前端词法与语法解析生成AST
    /// @return true: 成功 false：错误
    bool run() override;
};
