/**
 * @file graph.cpp
 * @author zenglj (zenglj@nwpu.edu.cn)
 * @brief 利用graphviz图形化显示AST
 * @version 0.1
 * @date 2023-09-24
 *
 * @copyright Copyright (c) 2023
 *
 */
#include <gvc.h>

#include <iostream>
#include <vector>

#include "ast.h"
#include "common.h"

using namespace std;

/// @brief 转换运算符成字符串
/// @param astnode AST节点
/// @return 运算符对应的字符串
string getNodeName(ast_node * astnode)
{
    string nodeName;

    switch (astnode->node_type) {
    case ast_operator_type::AST_OP_LEAF_LITERAL_UINT:
        nodeName = to_string((int32_t)astnode->integer_val);
        break;
    case ast_operator_type::AST_OP_LEAF_LITERAL_FLOAT:
        nodeName = to_string(astnode->float_val);
        break;
    case ast_operator_type::AST_OP_LEAF_VAR_ID:
        nodeName = astnode->name;
        break;
    case ast_operator_type::AST_OP_ADD:
        nodeName = "+";
        break;
    case ast_operator_type::AST_OP_SUB:
        nodeName = "-";
        break;
    case ast_operator_type::AST_OP_ASSIGN:
        nodeName = "=";
        break;
    case ast_operator_type::AST_OP_BLOCK:
        nodeName = "block";
        break;
    case ast_operator_type::AST_OP_EXPR:
        nodeName = "expr";
        break;
    case ast_operator_type::AST_OP_EXPR_SHOW:
        nodeName = "expr-show";
        break;
    case ast_operator_type::AST_OP_RETURN_STATEMENT:
        nodeName = "return";
        break;
    case ast_operator_type::AST_OP_FUNC_DEF:
        nodeName = "func:" + astnode->name;
        break;
    case ast_operator_type::AST_OP_FUNC_FORMAL_PARAMS:
        nodeName = "formal-params";
        break;
    case ast_operator_type::AST_OP_FUNC_FORMAL_PARAM:
        nodeName = astnode->name;
        break;
    case ast_operator_type::AST_OP_COMPILE_UNIT:
        nodeName = "Compile-Unit";
        break;
    case ast_operator_type::AST_OP_FUNC_CALL:
        nodeName = "func-call:" + astnode->name;
        break;
    case ast_operator_type::AST_OP_FUNC_REAL_PARAMS:
        nodeName = "real-params";
        break;
        // TODO 这里追加其它类型的结点，返回对应结点的字符串
    default:
        nodeName = "unknown";
        break;
    }

    return nodeName;
}

/// @brief AST遍历的函数类型声明
Agnode_t * graph_visit_ast_node(Agraph_t *, ast_node *);

/// @brief 叶子节点图形产生
/// @param g graphviz的Agraph_t
/// @param astnode 叶子节点
/// @return 创建的图形节点
Agnode_t * genLeafGraphNode(Agraph_t * g, ast_node * astnode)
{
    Agnode_t * node = agnode(g, (char *) nullptr, 1);
    if (node != nullptr) {

        // 获取叶子结点对应的名字
        string nodeName = getNodeName(astnode);

        // 填充红色,必须加这一句，否则下面的fillcolor属性设置无效
        agsafeset(node, (char *)"style", (char *)"filled", (char *)"");
        agsafeset(node, (char *)"fillcolor", (char *)"yellow", (char *)"");
        agsafeset(node, (char *)"fontcolor", (char *)"black", (char *)"");
        agsafeset(node, (char *)"fontname", (char *)"SimSun", (char *)"");
        agsafeset(node, (char *)"label", (char *)nodeName.c_str(), "");
        agsafeset(node, (char *)"shape", (char *)"record", (char *)"");
    }

    return node;
}

/// @brief 内部节点图形产生，包含父子关系的边等
/// @param g graphviz的Agraph_t
/// @param astnode 内部节点
/// @return 创建的图形节点
Agnode_t * genInternalGraphNode(Agraph_t * g, ast_node * astnode)
{
    std::vector<Agnode_t *> son_nodes;

    // 遍历AST内部结点的孩子，获取创建孩子的图形结点，递归
    // 这里用到了C++向量的容器遍历方法之一，从头开始到尾部
    std::vector<ast_node *>::iterator pIter;
    for (pIter = astnode->sons.begin(); pIter != astnode->sons.end(); ++pIter) {

        Agnode_t * son_node = graph_visit_ast_node(g, *pIter);
        son_nodes.push_back(son_node);
    }

    // 创建一个root图形节点
    Agnode_t * node = agnode(g, (char *)nullptr, 1);
    if (node != nullptr) {

        // 内部结点对应的运算符名称
        string nodeName = getNodeName(astnode);

        // 设置图形节点的属性
        agsafeset(node, (char *)"label", (char *)nodeName.c_str(), (char *)"");
        agsafeset(node, (char *)"shape", (char *)"ellipse", (char *)"");

        // 本结点与孩子按照自左往右构造图形的边agedge
        // 这里演示C++的另外一种遍历方式，采用C++的新语法for
        // 如果指针类型可不用引用，否则请用引用，避免C++的复制操作带来的性能损失
        // 利用C++的auto关键字，让编译器自动推导类型
        for (auto son_node : son_nodes) {
            agedge(g, node, son_node, (char *)"", 1);
        }
    }

    return node;
}

/// @brief 遍历抽象语法树节点产生图片，递归
/// @param g graphviz的Agraph_t
/// @param astnode AST的节点
/// @return 创建的图形
Agnode_t * graph_visit_ast_node(Agraph_t * g, ast_node * astnode)
{
    // 非法节点
    if (nullptr == astnode) {
        return nullptr;
    }

    Agnode_t * graph_node;

    if (isLeafNode(astnode->node_type)) {
        // 叶子节点
        graph_node = genLeafGraphNode(g, astnode);
    } else {
        // 内部运算符节点
        graph_node = genInternalGraphNode(g, astnode);
    }

    return graph_node;
}

/// @brief 抽象语法树AST的图形化显示，这里用C语言实现
/// @param root 抽象语法树的根
/// @param filePath 转换成图形的文件名，主要要通过文件名后缀来区分图片的类型，如png，svg，pdf等皆可
void OutputAST(ast_node * root, const std::string filePath)
{
    // 创建GV的上下文
    GVC_t * gv = gvContext();

    // 创建一个图形，Agdirected指明有向图
    Agraph_t * g = agopen((char *)"ast", Agdirected, nullptr);

    // 设置graph的属性
    // agsafeset(g, (char *)"rankdir", (char *)"LR", (char *)"LR");

    // 指定输出的图像质量
    agsafeset(g, (char *)"dpi", (char *)"600", (char *)"");

    // 遍历AST产生图形的结点以及相关边
    (void)graph_visit_ast_node(g, root);

    // 设置图形的布局
    gvLayout(gv, g, "dot");

    // 解析文件名的后缀，看产生什么类型的图片，默认png
    string fileExtName;

    string::size_type pos = filePath.find_last_of('.');
    if (pos == string::npos) {
        fileExtName = "png";
    } else {
        fileExtName = filePath.substr(pos + 1);
    }

    // 输出到一个文件中，png格式
    gvRenderFilename(gv, g, fileExtName.c_str(), filePath.c_str());

    // 关闭图形上下文，并清理资源
    gvFreeLayout(gv, g);
    agclose(g);
    gvFreeContext(gv);
}
