%{
#include <cstdio>
#include <cstring>
#include "../../common/ValueType.h"
// 词法分析头文件
#include "FlexLexer.h"

// bison生成的头文件
#include "BisonParser.h"

// 抽象语法树函数定义原型头文件
#include "AST.h"

// LR分析失败时所调用函数的原型声明
void yyerror(char * msg);

%}

// 联合体声明，用于后续终结符和非终结符号属性指定使用
%union {
    class ast_node * node;
    enum class BasicType;
    struct digit_int_attr integer_num;
    struct digit_real_attr float_num;
    struct var_id_attr var_id;
};

// 文法的开始符号
%start  CompileUnit

// 指定文法的终结符号，<>可指定文法属性
// 对于单个字符的算符或者分隔符，在词法分析时可直返返回对应的字符即可
%token <integer_num> T_DIGIT
%token <var_id> T_ID

//保留关键字
%token T_FUNC T_RETURN T_IF T_ELSE T_WHILE T_CONST 
%token T_VOID T_CONTINUE T_BREAK 
// 类型
%token T_INT
//计算
%token T_ADD T_SUB T_TIMES T_DIV T_MOD T_EQUAL T_NOT_EQUAL
%token T_LESS_THAN T_GREATER_THEN T_LESS_EQUAL T_GREATER_EQUAL
%token T_LOGICAL_AND T_LOGICAL_OR
%token T_NOT

%type <node> CompileUnit

// 指定文法的非终结符号，<>可指定文法属性
%type <node> FuncDef
%type <node> FuncFormalParams
%type <node> Block

%type <node> FuncFormalParam
%type <node> FuncBasicParam

%type <node> BlockItemList
%type <node> BlockItem

%type <node> Statement
%type <node> Expr
%type <node> AddExp UnaryExp LVal
%type <node> PrimaryExp
%type <node> RealParamList

// 新增
//运算优先级 MulExp AddExp RelExp EqExp LAndExp LOrExp 
%type <node> MulExp RelExp EqExp LAndExp LOrExp ConstExp ConstInitVal 
%type <node> ConstDef ConstDefs VarDef VarDefs InitVal Decl Cond VarDecl ConstDecl
%type <node> ArrayLists InitValList FuncBasicParamArrays LValueList
%%

/* 编译单元可包含若干个函数，main函数作为程序的入口，必须存在 */
CompileUnit : FuncDef {
        $$ = create_contain_node(ast_operator_type::AST_OP_COMPILE_UNIT, $1);
        ast_root = $$;
    }
    | Statement {
        $$ = create_contain_node(ast_operator_type::AST_OP_COMPILE_UNIT, $1);
        ast_root = $$;
    }
    | CompileUnit FuncDef {
        $$ = insert_ast_node($1, $2);
    }
    | CompileUnit Statement {
        $$ = insert_ast_node($1, $2);
    }
	| Decl
	{
        $$ = create_contain_node(ast_operator_type::AST_OP_COMPILE_UNIT, $1);
		// $$ = create_contain_node(ast_operator_type::AST_OP_DECL, $1);
        ast_root = $$;
	}
	| CompileUnit Decl
	{
		$$ = insert_ast_node($1, $2);
	}
    ;

// 函数定义
FuncDef : T_FUNC T_ID '(' ')' Block  {
        $$ = create_func_def($2.lineno, $2.id, $5, nullptr);
    }
    | T_FUNC T_ID '(' FuncFormalParams ')' Block {
        $$ = create_func_def($2.lineno, $2.id, $6, $4);
    }
	| T_VOID T_ID '(' ')' Block
	{
        $$ = create_func_def(BasicType::TYPE_VOID,$2.lineno, $2.id, $5, nullptr);
	}
	| T_VOID T_ID '(' ')' ';'
	{
        $$ = create_func_def(BasicType::TYPE_VOID,$2.lineno, $2.id, nullptr, nullptr);
	}
	|T_VOID T_ID '('FuncFormalParams ')' Block
	{
        $$ = create_func_def(BasicType::TYPE_VOID,$2.lineno, $2.id, $6, $4);
	}
	|T_VOID T_ID '('FuncFormalParams ')' ';'
	{
        $$ = create_func_def(BasicType::TYPE_VOID,$2.lineno, $2.id, nullptr, $4);
	}
	| T_INT T_ID '(' ')' Block
	{
        $$ = create_func_def(BasicType::TYPE_INT,$2.lineno, $2.id, $5, nullptr);
	}
	|T_INT T_ID '('FuncFormalParams ')' Block
	{
        $$ = create_func_def(BasicType::TYPE_INT,$2.lineno, $2.id, $6, $4);
	}
	|T_INT T_ID '(' ')' ';'
	{
        $$ = create_func_def(BasicType::TYPE_INT,$2.lineno, $2.id, nullptr, nullptr);
	}
	| T_INT T_ID '('FuncFormalParams ')' ';'
	{
        $$ = create_func_def(BasicType::TYPE_INT,$2.lineno, $2.id, nullptr, $4);
	}
    ;

// 函数参数
FuncFormalParams : FuncFormalParam  {
        $$ = create_contain_node(ast_operator_type::AST_OP_FUNC_FORMAL_PARAMS, $1);
    }
    | FuncFormalParams ',' FuncFormalParam {
        $$ = insert_ast_node($1, $3);
    }
    ;

// 函数参数，目前只支持基本类型参数
FuncFormalParam : FuncBasicParam  {
        $$ = $1;
    }
    ;

// 基本类型函数参数，默认整型
FuncBasicParam : T_INT T_ID {
        $$ = create_func_formal_param($2.lineno, $2.id);
    }
	| T_INT T_ID FuncBasicParamArrays
	{
		ast_node * id_node = new_ast_leaf_node(var_id_attr{$2.id, $2.lineno});
		ast_node * return_node = create_contain_node(ast_operator_type::AST_OP_FUNC_ARRAY, id_node);
		update_array_ast_node_info($3);
		$$ = insert_ast_node(return_node, $3);
	}
    ;
FuncBasicParamArrays:'[' ']'
	{	
		ast_node *num_node = new_ast_leaf_node(digit_int_attr{0,0});
		ast_node *array_node = new_ast_node(ast_operator_type::AST_OP_ARRAY, nullptr);
		$$ = new_ast_node(ast_operator_type::AST_OP_ARRAY,num_node,array_node,nullptr);

	}
	|'[' Expr ']'
	{
		// ast_node *num_node = new_ast_leaf_node(digit_int_attr{$2.val,$2.lineno});
		ast_node *array_node = new_ast_node(ast_operator_type::AST_OP_ARRAY, nullptr);
		$$ = new_ast_node(ast_operator_type::AST_OP_ARRAY,$2,array_node,nullptr);

	}
	| FuncBasicParamArrays '[' Expr ']'
	{
		// ast_node * num_node = new_ast_leaf_node(digit_int_attr{$3.val, $3.lineno});
		ast_node * array_node = new_ast_node(ast_operator_type::AST_OP_ARRAY,nullptr);
        $$ = array_insert_ast_node($1,$3,array_node);
	}
	;

// 语句块
Block : '{' '}' {
        // 语句块没有语句
        $$ = nullptr;
    }
    | '{' BlockItemList '}' {
        // 语句块含有语句
        $$ = $2;
    }
    ;

// 语句块内语句列表
BlockItemList : BlockItem {
        // 第一个左侧的孩子节点归约成Block父节点，后续语句可不断作为孩子追加到block中
        // 创建一个AST_OP_BLOCK类型的中间节点，孩子为Statement($1)
        $$ = new_ast_node(ast_operator_type::AST_OP_BLOCK, $1, nullptr);
    }
    | BlockItemList BlockItem  {
        // 采用左递归的文法产生式，可以使得Block节点在上个产生式创建，后续递归追加孩子节点
        // 请注意，不要采用右递归，左递归翻遍孩子的追加
        // BlockItem($2)作为Block($1)的孩子 
        $$ = insert_ast_node($1, $2);
    }
    ;

// 目前语句块内项目只能是语句
BlockItem : Statement  {
	
        $$ = $1;
    }
	| Decl
	{
		$$ = $1;
	}
    ;

/* 语句 */
/* Statement : T_ID '=' Expr ';' { */
Statement : LVal '=' Expr ';' {
        // 归约到Statement时要执行的语义动作程序
        // 赋值语句，不显示值

		// 变量节点
		//ast_node * id_node = new_ast_leaf_node(var_id_attr{$1.id, $1.lineno});

		//free($1.id);

        // 创建一个AST_OP_ASSIGN类型的中间节点，孩子为Id和Expr($3)
        $$ = new_ast_node(ast_operator_type::AST_OP_ASSIGN, $1, $3, nullptr);
    }
    | Expr ';' {
        // Expr归约到Statement时要执行的语义动作程序
        // 表达式语句，不显示表达式的值

        // 创建一个AST_OP_EXPR类型的中间节点，孩子为Expr($1)
        $$ = new_ast_node(ast_operator_type::AST_OP_EXPR, $1, nullptr);
    }//方便debug的内容，可以不删除
    | Expr {
        // Expr归约到Statement时要执行的语义动作程序
        // 表达式语句，需要显示表达式的值

        // 创建一个AST_OP_EXPR_SHOW类型的中间节点，孩子为Expr($1)
        $$ = new_ast_node(ast_operator_type::AST_OP_EXPR_SHOW, $1, nullptr);
    } 
	| ';'
	{
		$$ = nullptr;
	}
	|T_RETURN ';'
	{
        $$ = new_ast_node(ast_operator_type::AST_OP_RETURN_STATEMENT, nullptr);
	}
    | T_RETURN Expr ';' {
        // 返回语句
        $$ = new_ast_node(ast_operator_type::AST_OP_RETURN_STATEMENT, $2, nullptr);
    }
	| T_IF '(' Cond ')' Statement T_ELSE Statement
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_IF,$3,$5,$7,nullptr);
	}
	| T_IF '(' Cond ')' Statement
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_IF,$3,$5,nullptr);
	}
	| T_WHILE '(' Cond ')' Statement
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_WHILE,$3,$5,nullptr);
	}
	| T_BREAK';'
	{
		$$ = new_ast_leaf_node(BasicType::TYPE_BREAK,0);
	}
	| T_CONTINUE';'
	{
		$$ = new_ast_leaf_node(BasicType::TYPE_CONTINUE,0);
	}
	| Block
	{
		$$ = $1;
	}
    ;

Cond: LOrExp
	{
		// 
		$$ = new_ast_node(ast_operator_type::AST_OP_COND, $1,nullptr);
	}
	;
//////////////试试 原本是 AddExp
//TODO 以后可能要改回AddExp ?
Expr : LOrExp { 
        $$ = $1; 
    }
    ;
//关系表达式
RelExp : AddExp
	{
		$$ = $1;
	}
	| RelExp T_LESS_THAN AddExp
	{
		//
		$$ = new_ast_node(ast_operator_type::AST_OP_LESS_THAN, $1, $3, nullptr);
	}
	| RelExp T_GREATER_THEN AddExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_GREATER_THAN, $1, $3, nullptr);
	} 
	| RelExp T_LESS_EQUAL AddExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_LESS_EQUAL, $1, $3, nullptr);
	}
	|RelExp T_GREATER_EQUAL AddExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_GREATER_EQUAL, $1, $3, nullptr);
	}
	;
//相等性表达式
EqExp : RelExp
	{
		$$ = $1;
	}
	| EqExp T_EQUAL RelExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_EQUAL, $1, $3, nullptr);
		
	}
	| EqExp T_NOT_EQUAL RelExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_NOT_EQUAL, $1, $3, nullptr);
	}
	;
LAndExp: EqExp
	{
		$$ = $1;
	}
	| LAndExp T_LOGICAL_AND EqExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_LOGICAL_AND, $1, $3, nullptr);
	}
	;
LOrExp:LAndExp
	{
		$$ = $1;
	}
	| LOrExp T_LOGICAL_OR LAndExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_LOGICAL_OR, $1, $3, nullptr);
	}
	;
//声明
Decl:ConstDecl
	{
		// $$ = new_ast_node(ast_operator_type::AST_OP_DECL, $1, nullptr);
		$$ = $1;
	}
	|VarDecl
	{
		// $$ = new_ast_node(ast_operator_type::AST_OP_DECL, $1, nullptr);
		$$ = $1;
	}
	;



// 常量表达式
ConstExp : AddExp
	{
		$$ = $1;
	}
//变量初值
//TODO 数组
InitVal :Expr
	{
		$$ = $1;
		
	}
	|'{' InitValList '}'
	{
		$$ = $2;
	}
	| '{' '}'
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_ARRAY_EMPTY, nullptr);
	}
	;
//目前constExp和Exp是相同的，所以不妨公用
InitValList:InitVal
	{
		// $$ = $1;
        $$ = create_contain_node(ast_operator_type::AST_OP_INIT_VAL_LIST, $1);
	}
	| InitValList ',' InitVal
	{
        $$ = insert_ast_node($1, $3);
	}
	;

ConstDecl:T_CONST T_INT ConstDefs ';'
	{
		//TYPE_INT = 2
		ast_node * id_node = new_ast_leaf_node(BasicType::TYPE_INT,0);

        $$ = new_ast_node(ast_operator_type::AST_OP_CONST_DECL, id_node, $3, nullptr);

	}
	/* |ConstDecl ',' ConstDef ';'
	{
		$$ = insert_ast_node($1, $3);
	} */
	;
ConstDefs:ConstDef
	{
		//$$ = $1;
        $$ = create_contain_node(ast_operator_type::AST_OP_CONST_DEF, $1);

	}
	|ConstDefs ',' ConstDef 
	{
        $$ = insert_ast_node($1, $3);
	}
	;
// 常量初值 
// TODO 暂时不支持组数
ConstInitVal : ConstExp
	{
		$$ = $1;
	}
	|'{' InitValList '}'
	{
		$$ = $2;
	}
	| '{' '}'
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_ARRAY_EMPTY, nullptr);
	}
	;
// 常数定义
ConstDef : T_ID '=' ConstInitVal
	{
        // 赋值语句，不显示值
		// 变量节点
		ast_node * id_node = new_ast_leaf_node(var_id_attr{$1.id, $1.lineno});

		free($1.id);

        // 创建一个AST_OP_ConstDef类型的中间节点，孩子为Id和ConstInitVal($3)
        $$ = new_ast_node(ast_operator_type::AST_OP_ASSIGN, id_node, $3, nullptr);

	}
	/* |T_ID ArrayLists
	{
		// ?
		ast_node * id_node = new_ast_leaf_node(var_id_attr{$1.id, $1.lineno});
		update_array_ast_node_info($2);
		$$ = new_ast_node(ast_operator_type::AST_OP_ARRAY_DEF, id_node,$2, nullptr);
	} */
	|T_ID ArrayLists '=' ConstInitVal
	{
		ast_node * id_node = new_ast_leaf_node(var_id_attr{$1.id, $1.lineno});
		update_array_ast_node_info($2);
		$$ = new_ast_node(ast_operator_type::AST_OP_ARRAY_DEF, id_node,$2,$4, nullptr);
	}
	;
//变量定义
//TODO 数组
VarDef : T_ID
	{
		ast_node * id_node = new_ast_leaf_node(var_id_attr{$1.id, $1.lineno});
		
		// $$ = new_ast_node(ast_operator_type::AST_OP_VAR_DEF, $1, nullptr);
		$$ = id_node;
	}
	| T_ID '=' InitVal
	{
		// 赋值语句，不显示值
		// 变量节点
		ast_node * id_node = new_ast_leaf_node(var_id_attr{$1.id, $1.lineno});

		free($1.id);

        // 创建一个AST_OP_ConstDef类型的中间节点，孩子为Id和ConstInitVal($3)
        $$ = new_ast_node(ast_operator_type::AST_OP_ASSIGN, id_node, $3, nullptr);
	}
	| T_ID ArrayLists
	{
		// ?
		ast_node * id_node = new_ast_leaf_node(var_id_attr{$1.id, $1.lineno});
		update_array_ast_node_info($2);
		$$ = new_ast_node(ast_operator_type::AST_OP_ARRAY_DEF, id_node,$2, nullptr);
	}
	|T_ID ArrayLists '=' InitVal
	{
		ast_node * id_node = new_ast_leaf_node(var_id_attr{$1.id, $1.lineno});
		update_array_ast_node_info($2);
		$$ = new_ast_node(ast_operator_type::AST_OP_ARRAY_DEF, id_node,$2,$4, nullptr);
	}

	;
ArrayLists: '[' ConstExp ']'
	{
		
        // ast_node * num_node = new_ast_leaf_node(digit_int_attr{$2.val, $2.lineno});
		ast_node * array_node = new_ast_node(ast_operator_type::AST_OP_ARRAY,nullptr);
		$$ = new_ast_node(ast_operator_type::AST_OP_ARRAY,$2,array_node,nullptr);
	}
	| ArrayLists '[' ConstExp ']'
	{
        // ast_node * num_node = new_ast_leaf_node(digit_int_attr{$3.val, $3.lineno});
		ast_node * array_node = new_ast_node(ast_operator_type::AST_OP_ARRAY,nullptr);

        $$ = array_insert_ast_node($1,$3,array_node);

	}
	;
// 变量声明
VarDecl: T_INT VarDefs ';'
	{
		//TYPE_INT = 2
		ast_node * id_node = new_ast_leaf_node(BasicType::TYPE_INT,0);

        $$ = new_ast_node(ast_operator_type::AST_OP_VAR_DECL, id_node, $2, nullptr);
	}
	;
VarDefs:VarDef
	{
		// $$ = $1;
		$$ = create_contain_node(ast_operator_type::AST_OP_VAR_DEF, $1);
	}
	| VarDefs ',' VarDef
	{	
        $$ = insert_ast_node($1, $3);
	}
	;
/* 加法表达式 */
AddExp : AddExp T_ADD MulExp {
        /* Expr = Expr + Term */

        // 创建一个AST_OP_ADD类型的中间节点，孩子为Expr($1)和Term($3)
        $$ = new_ast_node(ast_operator_type::AST_OP_ADD, $1, $3, nullptr);
    }
    | AddExp T_SUB MulExp {
        /* Expr = Expr + Term */

        // 创建一个AST_OP_ADD类型的中间节点，孩子为Expr($1)和Term($3)
        $$ = new_ast_node(ast_operator_type::AST_OP_SUB, $1, $3, nullptr);
    }
	|MulExp{
		$$ = $1;
	}
    ;
MulExp : MulExp T_TIMES UnaryExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_TIMES,$1,$3,nullptr);
	}
	| MulExp T_DIV UnaryExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_DIV,$1,$3,nullptr);
	}
	| MulExp T_MOD UnaryExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_MOD,$1,$3,nullptr);
	}
	| UnaryExp
	{
		/* Expr = Term */
        $$ = $1;
	}
	;
/* UnaryOp:
	'+'
	{

	}
	|
	'-'
	{

	}
	|
	'!'
	{

	}	
	; */
UnaryExp : PrimaryExp {
        $$ = $1;
    }
    | T_ID '(' ')' {
        // 用户自定义的不含实参的函数调用
        $$ = create_func_call($1.lineno, $1.id, nullptr);
    }
    | T_ID '(' RealParamList ')' {
        // 用户自定义的含有实参的参数调用
        $$ = create_func_call($1.lineno, $1.id, $3);
    }//一元运算符
	| T_ADD UnaryExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_POSITIVE,$2,nullptr);
	}	
	| T_SUB UnaryExp
	{
		$$ = new_ast_node(ast_operator_type::AST_OP_NEGATIVE,$2,nullptr);
		
	}
	| T_NOT UnaryExp
	{
        //$$ = new_ast_node(ast_operator_type::AST_OP_EXPR_SHOW, $1, nullptr);
		// 
		$$ = new_ast_node(ast_operator_type::AST_OP_NOT,$2,nullptr);
	}
	;
PrimaryExp :  '(' Expr ')' {
        /* PrimaryExp = Expr */
        $$ = $2;
    }
    | T_DIGIT {
        // 无符号整数识别

        // 终结符作为抽象语法树的叶子节点进行创建
        $$ = new_ast_leaf_node(digit_int_attr{$1.val, $1.lineno});
    }
    | LVal  {
        // 左值
        $$ = $1;
    }
    ;

// 尚未支持数组
LVal : T_ID {
        // 终结符作为抽象语法树的叶子节点进行创建
        $$ = new_ast_leaf_node(var_id_attr{$1.id, $1.lineno});

		// 对于字符型字面量的字符串空间需要释放，因词法用到了strdup进行了字符串复制
		free($1.id);
    }
	|T_ID LValueList
	{
		ast_node *id_node = new_ast_leaf_node(var_id_attr{$1.id, $1.lineno});
        ast_node *return_node = create_contain_node(ast_operator_type::AST_OP_ARRAY_VISIT, id_node);
		$$ = insert_ast_node(return_node, $2);
	}
	;
LValueList:'[' Expr ']'
	{
		// ast_node *id_node = new_ast_leaf_node(var_id_attr{$2.id, $2.lineno});
		// ast_node * info_node = new_info_node(ast_operator_type::AST_OP_INFO_ARRAY_VISIT,$2.val);
		// ast_node * info_node = new_ast_node(ast_operator_type::AST_OP_INFO_ARRAY_VISIT,$2,nullptr);
		$$ = create_contain_node(ast_operator_type::AST_OP_INFO_ARRAY_VISIT, $2);

	}
	|LValueList '[' Expr ']'
	{
		// ast_node * info_node = new_info_node(ast_operator_type::AST_OP_INFO_ARRAY_VISIT,$3.val);
		// ast_node * info_node = new_ast_node(ast_operator_type::AST_OP_INFO_ARRAY_VISIT,$3,nullptr);
		$$ = insert_ast_node($1, $3);
	}
	
	;

/* 实参列表 */
RealParamList : Expr {
        $$ = create_contain_node(ast_operator_type::AST_OP_FUNC_REAL_PARAMS, $1);
    }
    | RealParamList ',' Expr {
        $$ = insert_ast_node($1, $3);
    }
    ;
%%

// 语法识别错误要调用函数的定义
void yyerror(char * msg)
{
    printf("Line %d: %s\n", yylineno, msg);
}
