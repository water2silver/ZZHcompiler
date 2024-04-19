/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_HOME_ZHAO_CALCULATOR_FRONTEND_FLEXBISON_AUTOGENERATED_CALCULATORBISON_H_INCLUDED
# define YY_YY_HOME_ZHAO_CALCULATOR_FRONTEND_FLEXBISON_AUTOGENERATED_CALCULATORBISON_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    T_DIGIT = 258,                 /* T_DIGIT  */
    T_ID = 259,                    /* T_ID  */
    T_FUNC = 260,                  /* T_FUNC  */
    T_RETURN = 261,                /* T_RETURN  */
    T_MAIN = 262,                  /* T_MAIN  */
    T_IF = 263,                    /* T_IF  */
    T_ELSE = 264,                  /* T_ELSE  */
    T_WHILE = 265,                 /* T_WHILE  */
    T_CONST = 266,                 /* T_CONST  */
    T_VOID = 267,                  /* T_VOID  */
    T_CONTINUE = 268,              /* T_CONTINUE  */
    T_BREAK = 269,                 /* T_BREAK  */
    T_INT = 270,                   /* T_INT  */
    T_ADD = 271,                   /* T_ADD  */
    T_SUB = 272,                   /* T_SUB  */
    T_TIMES = 273,                 /* T_TIMES  */
    T_DIV = 274,                   /* T_DIV  */
    T_MOD = 275,                   /* T_MOD  */
    T_EQUAL = 276,                 /* T_EQUAL  */
    T_NOT_EQUAL = 277,             /* T_NOT_EQUAL  */
    T_LESS_THAN = 278,             /* T_LESS_THAN  */
    T_GREATER_THEN = 279,          /* T_GREATER_THEN  */
    T_LESS_EQUAL = 280,            /* T_LESS_EQUAL  */
    T_GREATER_EQUAL = 281,         /* T_GREATER_EQUAL  */
    T_LOGICAL_AND = 282,           /* T_LOGICAL_AND  */
    T_LOGICAL_OR = 283,            /* T_LOGICAL_OR  */
    T_NOT = 284                    /* T_NOT  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 20 "/home/zhao/calculator/frontend/flexbison/Calculator.y"

    class ast_node * node;
    
    struct digit_int_attr integer_num;
    struct digit_real_attr float_num;
    struct var_id_attr var_id;

#line 101 "/home/zhao/calculator/frontend/flexbison/autogenerated/CalculatorBison.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_HOME_ZHAO_CALCULATOR_FRONTEND_FLEXBISON_AUTOGENERATED_CALCULATORBISON_H_INCLUDED  */
