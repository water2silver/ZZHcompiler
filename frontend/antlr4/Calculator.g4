grammar Calculator;

// 词法规则名总是以大写字母开头； 

// 语法规则名总是以小写字母开头 

// 尽量每个非终结符多多采用闭包、正闭包或可选符等用一个EBNF范式描述 

// 若不能用一个EBNF范式来描述，则很大可能需要增加#区分，类似下面的非终结符statement

// 语法规则描述：EBNF范式
compileUnit: (statement | funcDef)+;
funcDef: T_FUNC T_ID '(' funcFormalParams? ')' block;
funcFormalParams: funcFormalParam (',' funcFormalParam)*;
funcFormalParam: funcBasicParam;
funcBasicParam: T_ID;
block: '{' blockItemList? '}';
blockItemList: blockItem+;
blockItem: statement;

// 多个产生式起不同的别名，按非终结符名处理，要求全局唯一，便于后续CST遍历时可进行区分，
// 直接看不到visitStatement，可看到visitAssignStatement、visitExpressionStatement等
statement:
	T_ID '=' expr ';'	# assignStatement
	| expr ';'			# expressionStatement
	| expr				# expressionShowStatement
	| T_RETURN expr ';'	# returnStatement;

expr: addExp;
addExp: unaryExp (addOp unaryExp)*;
addOp: T_ADD | T_SUB;
unaryExp: primaryExp | T_ID '(' realParamList? ')';
primaryExp: '(' expr ')' | T_DIGIT | lVal;
realParamList: expr (',' expr)*;
lVal: T_ID;

// 词法规则描述：正规式
T_ADD: '+';
T_SUB: '-';

// 要注意关键字同样也属于T_ID，因此必须放在T_ID的前面，否则会识别成T_ID
T_FUNC: 'function';
T_RETURN: 'return';
T_ID: [a-zA-Z][a-zA-Z0-9]*;
T_DIGIT: [0-9][0-9]*;

/* 空白符丢弃 */
WS: [ \r\n\t]+ -> skip;

/* 单行注释丢弃 */
LineComment: '//' ~ [\r\n]* -> skip;

/* 多行注释丢弃 */
MultiLineComment: '/*' .*? '*/' -> skip;