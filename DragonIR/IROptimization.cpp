#include <cstdint>
#include <cstdio>
#include <unordered_map>
#include <vector>
#include <iostream>
#include "AST.h"
#include "IRCode.h"
#include "IRGenerator.h"
#include "IRInst.h"
#include "SymbolTable.h"
#include "Value.h"
#include "ValueType.h"

#include "IROptimization.h"

/// @brief 对 + - * / mod 运算进行常数优化
/// @param node 
/// @return 
bool constantOptimization(ast_node * node)
{
    return false;
    ast_node * src1_node = node->sons[0];
    ast_node * src2_node = node->sons[1];

	//常数优化-针对直接计算整数的情况。
	if(checkConstant(src1_node,src2_node))
	{
        int num;
        Value * constValue;
        int src1_num, src2_num;
        src1_num = getConstantValue(src1_node);
        src2_num = getConstantValue(src2_node);


        switch (node->node_type) {
            case ast_operator_type::AST_OP_ADD:
                num = src1_num + src2_num;
                constValue = new ConstValue(num);
                node->val = constValue;
                break;
			case ast_operator_type::AST_OP_SUB:
                num = src1_num - src2_num;
                constValue = new ConstValue(num);
                node->val = constValue;
                break;
            case ast_operator_type::AST_OP_TIMES:
                num = src1_num * src2_num;
               	constValue = new ConstValue(num);
                node->val = constValue;
                break;
			case ast_operator_type::AST_OP_DIV:
				if(src2_num==0)
				{
                    printf("divisor is 0 !");
                    return false;
                }
                num = src1_num / src2_num;
                constValue = new ConstValue(num);
                node->val = constValue;
                break;
			case ast_operator_type::AST_OP_MOD:
				if(src2_num==0)
				{
                    printf("mod is 0 !\n");
                    return false;
                }
                num = src1_num % src2_num;
                constValue = new ConstValue(num);
                node->val = constValue;
                break;
            default:
                printf("you should not reach here\n");
                break;
        }
        return true;
    }

    return false;
}

/// @brief 节点的两个子节点是否为常数或者常值节点
/// @param src1_node 
/// @param src2_node 
/// @return 
bool checkConstant(ast_node * src1_node, ast_node * src2_node)
{
    bool res = (src1_node->node_type == ast_operator_type::AST_OP_LEAF_LITERAL_UINT ||
                (src1_node->val != nullptr && src1_node->val->isConst())) &&
               (src2_node->node_type == ast_operator_type::AST_OP_LEAF_LITERAL_UINT ||
                (src2_node->val != nullptr && src2_node->val->isConst()));
    return res;
}

/// @brief 得到节点的常数值
/// @param src_node 
/// @return 常数值
int getConstantValue(ast_node * src_node)
{
    int num = 0;
    if (src_node->node_type == ast_operator_type::AST_OP_LEAF_LITERAL_UINT) {
        num = src_node->integer_val;
    } else if (src_node->val != nullptr && src_node->val->isConst()) {
        num = src_node->val->intVal;
    } else {
        printf("you should not reach here\n");
    }
    return num;
}