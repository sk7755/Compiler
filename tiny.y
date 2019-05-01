%{
#define YYPARSER
#include "globals.h"
#include "util.h"
#include "scan.h"
#include "parse.h"
#include "tiny.tab.h"

static char * savedName;
static int savedLineNo;
static TreeNode * savedTree;
static int yylex(void);
int yyerror(char * message);
TreeNode * parse(void);

#define SAVE_ID_NO do{ \
			savedName = copyString(tokenString);\
			savedLineNo = lineno; }while(0)

%}
%start program
%token ERROR COMERR
%token IF ELSE RETURN WHILE
%token INT VOID INTARR
%token ID NUM
%token ASSIGN EQ NEQ LT LEQ GT GEQ PLUS MINUS TIMES DIVIDE
%token LPAREN RPAREN LCB RCB LSB RSB COMMA SEMI
%define parse.trace
%%

program				: declaration_list {savedTree = $1;}
					;
declaration_list	: declaration_list declaration
						{	YYSTYPE t = $1;
							if(t != NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = $2;
								$$ = $1;
							}
							else $$ = $2;
						}
					| declaration { $$ = $1; }
					;
declaration			: var_declaration { $$ = $1; }
					| fun_declaration { $$ = $1; }
					;
var_declaration		: type_specifier ID{ SAVE_ID_NO;}
					  SEMI
						{	$$ = newDeclareNode();
							$$->op = $1;
							$$->name = savedName;
							$$->lineno = savedLineNo;
						}
					| type_specifier ID{ SAVE_ID_NO; }
					  LSB NUM RSB SEMI
						{	$$ = newDeclareNode();
							$$->op = $1;
							$$->name = savedName;
							$$->val = $4;
							$$->lineno = savedLineNo;
						}
					;
type_specifier		: INT { $$ = INT;}
					| VOID { $$ = VOID;}
					;
fun_declaration		: type_specifier ID{ SAVE_ID_NO; }
					  LPAREN params RPAREN compound_stmt
						{	$$ = newFuncNode();
							$$->op = $1;
							$$->name = savedName;
							$$->child[0] = $4;
							$$->child[1] = $6;
							$$->lineno = savedLineNo;
						}
					;
params				: param_list { $$ = $1; }
					| VOID { $$ = NULL; }
					;
param_list			: param_list COMMA param
						{	YYSTYPE t = $1;
							if(t != NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = $3;
								$$ = $1;
							}
							else $$ = $3;
						}
					| param { $$ = $1; }
					;
param				: type_specifier ID
						{	$$ = newParamNode();
							$$->op = $1;
							$$->name = copyString(tokenString);
							$$->lineno = lineno;
						}
					| type_specifier ID{ SAVE_ID_NO; }
					  LSB RSB
						{	$$ = newParamNode();
							$$->op = $1;
							$$->name = savedName;
							$$->val = 1;	//declare array parameter
							$$->lineno = savedLineNo;
						}
					;
compound_stmt		: LCB local_declarations statement_list RCB
						{	$$ = newStmtNode(CompoundK);
							$$->child[0] = $2;
							$$->child[1] = $3;
						}
					;
local_declarations	: local_declarations var_declaration
						{	YYSTYPE t = $1;
							if( t!= NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = $2;
								$$ = $1;
							}
							else $$ = $2;
						}
					| %empty { $$ = NULL; }
					;
statement_list		: statement_list statement
						{	YYSTYPE t = $1;
							if (t!= NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = $2;
								$$ = $1;
							}
							else $$ = $2;
						}
					| %empty { $$ = NULL;}
					;
statement			: expression_stmt { $$ = $1; }
					| compound_stmt { $$ = $1; }
					| selection_stmt { $$ = $1; }
					| iteration_stmt { $$ = $1; }
					| return_stmt { $$ = $1; }
					;
expression_stmt		: expression SEMI { $$ = $1; }
					| SEMI { $$ = NULL; }
					;
selection_stmt		: IF LPAREN expression RPAREN statement
						{	$$ = newStmtNode(IfK);
							$$->child[0] = $3;
							$$->child[1] = $5;
						}
					| IF LPAREN expression RPAREN statement ELSE statement
						{	$$ = newStmtNode(IfK);
							$$->child[0] = $3;
							$$->child[1] = $5;
							$$->child[2] = $7;
						}
					;
iteration_stmt		: WHILE LPAREN expression RPAREN statement
						{	$$ = newStmtNode(WhileK);
							$$->child[0] = $3;
							$$->child[1] = $5;
						}
					;
return_stmt			: RETURN SEMI { $$ = newStmtNode(ReturnK);}
					| RETURN expression SEMI { $$ = newStmtNode(ReturnK); $$->child[0] = $2;}
					;
expression			: var ASSIGN expression
						{	$$ = newStmtNode(ExpK);
							$$->child[0] = $1;
							$$->op = EQ;
							$$->child[1] = $3;
						}
					| simple_expression{ $$ = $1; }
					;
var					: ID { $$ = newFactorNode(IdK);
						   $$->name = copyString(tokenString);
						   $$->lineno = lineno;
					  	 }
					| ID {SAVE_ID_NO;}
					  LSB expression RSB
						{	$$ = newFactorNode(ArrK);
							$$->name = savedName;
							$$->lineno = savedLineNo;
						}
					;
simple_expression	: additive_expression relop additive_expression
						{	$$ = newStmtNode(ExpK);
							$$->child[0] = $1;
							$$->op = $2;
							$$->child[1] = $3;
						}
					| additive_expression { $$ = $1;}
					;
relop				: LEQ { $$ = LEQ;}
					| LT { $$ = LT;}
					| GT { $$ = GT;}
					| GEQ { $$ = GEQ;}
					| EQ { $$ = EQ;}
					| NEQ { $$ = NEQ;}
					;
additive_expression	: additive_expression addop term
						{	$$ = newStmtNode(ExpK);
							$$->child[0] = $1;
							$$->op = $2;
							$$->child[1] = $3;
						}
					| term { $$ = $1; }
					;
addop				: PLUS { $$ = PLUS; }
					| MINUS { $$ = MINUS; }
					;
term				: term mulop factor 
						{	$$ = newStmtNode(ExpK);
							$$->child[0] = $1;
							$$->op = $2;
							$$->child[1] = $3;
						}
					| factor { $$ = $1;}
					;
mulop				: TIMES { $$ = TIMES;}
					| DIVIDE { $$ = DIVIDE;}
					;
factor				: LPAREN expression RPAREN { $$ = $2;}
					| var {$$ = $1;}
					| call {$$ = $1;}
					| NUM {$$ = newFactorNode(ConstK); $$->val = atoi(tokenString);}
					;
call				: ID { SAVE_ID_NO;}	  
					  LPAREN args RPAREN
						{	$$ = newCallNode();
							$$->name = savedName;
							$$->child[0] = $3;
							$$->lineno = savedLineNo;
						}
args				: arg_list { $$ = $1;}
					| %empty { $$ = NULL;}
					;
arg_list			: arg_list COMMA expression
						{	YYSTYPE t = $1;
							if (t!= NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = $3;
								$$ = $1;
							}
							else $$ = $3;
						}
					| expression { $$ = $1;}
					;
					
%%

int yyerror(char * message)
{
	fprintf(listing, "Syntax error at line %d: %s\n", lineno,message);
	fprintf(listing, "Current token: ");
	printToken(yychar, tokenString);
	Error = TRUE;
	return 0;
}
static int yylex()
{
	return getToken();
}
TreeNode * parse(void)
{
	yyparse();
	return savedTree;
}
