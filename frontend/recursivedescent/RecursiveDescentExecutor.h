#include "FrontEndExecutor.h"

class RecursiveDescentExecutor : public FrontEndExecutor {
public:
    RecursiveDescentExecutor(std::string filename) : FrontEndExecutor(filename) {}
    virtual ~RecursiveDescentExecutor() {}

    /// @brief 前端词法与语法解析生成AST
    /// @return true: 成功 false：错误
    bool run() override;
};
