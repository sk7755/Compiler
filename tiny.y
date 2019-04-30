%{
#define YYPARSER
#include "globals.h"
#include "util.h"
#include "scan.h"
#include "parse.h"

#define YYSTYPE TreeNode *
static char * savedName;
static int savedLineNo;
static TreeNode * savedTree;

%}

%token ERROR COMERR
%token IF ELSE INT RETURN VOID WHILE
%token ID NUM
%token ASSIGN EQ NEQ LT LEQ GT GEQ PLUS MINUS TIMES DIVIDE
%token LPAREN RPAREN LCB RCB LSB RSB COMMA SEMI
%%

program				: declaration_list {savedTree = $1;}
					;
declaration_list	: declaration_list declaration
						{	YYSTYPE t = $1;
							if (t!= NULL){
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
var_declaration		: type_specifier ID SEMI
						{	$$ = newDeclareNode();
							$$->op = $1;
							$$->name = $2;
						}
					| type_specifier ID LSB NUM RSB SEMI
						{	$$ = newDeclareNode();
							$$->op = $1;
							$$->name = $2;
							$$->val = $4;
						}
					;
type_specifier		: INT { $$ = INT;}
					| VOID { $$ = VOID;}
					;
fun_declaration		: type_specifier ID LPAREN params RPARENS compound_stmt
						{	$$ = newFuncNode();
							$$->op = $1;
							$$->name = $2;
							$$->child[0] = $4;
							$$->child[1] = $6;
						}
					;
params				: param_list { $$ = $1; }
					| VOID { $$ = NULL; }
					;
param_list			: param_list COMMA param
						{	YYSTYPE t = $1;
							if (t!= NULL){
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
							$$->name = $2;
						}
					| type_specifier ID LSB RSB
						{	$$ = newParamNode();
							$$->op = $1;
							$$->name = $2;
							$$->val = 1;	//declare array parameter
						}
					;
compound_stmt		: LCB local_declarations statement_list RCB
						{	$$ = newStmtNode(CompoundK);
							$$->child[0] = $2;
							$$->child[1] = $3;
						}
					;
local_declarations	: local_declarations var_declarations
						{	YYSTYPE t = $1;
							if (t!= NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = $2;
								$$ = $1;
							}
							else $$ = $2;
						}
					| { $$ = NULL; }
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
					| { $$ = NULL;}
					;
statement			: expression_stmt {}
					| compound_stmt {}
					| selection_stmt {}
					| iteration_stmt {}
					| return_stmt {}
					;
expression_stmt		: expression SEMI {}
					| SEMI {}
					;
selection_stmt		: IF LPAREN expression RPAREN statement {}
					| IF LPAREN expression RPAREN statement ELSE statement {}
					;
iteration_stmt		: WHILE LPAREN expression RPAREN statement {}
					;
return_stmt			: RETURN SEMI {}
					| RETURN expression SEMI {}
					;
expression			: var EQ expression {}
					| simple_expression {}
					;
var					: ID {}
					| ID LSB expression RSB {}
					;
simple_expression	: additive_expression relop additive_expression {}
					| additive_expression {}
					;
relop				: LEQ {}
					| LT {}
					| GT {}
					| GEQ {}
					| EQ {}
					| NEQ {}
					;
additive_expression	: additive_expression addop term {}
					| term {}
					;
addop				: PLUS {}
					| MINUS {}
					;
term				: term mulop factor {}
					| factor {}
					;
mulop				: TIMES {}
					| DIVIDE {}
					;
factor				: LPAREN expression RPAREN {}
					| var {}
					| call {}
					| NUM {}
					;
call				: ID LPAREN args RPAREN {}
args				: arg_list {}
					| {}
					;
arg_list			: arg_list COMMA expression {}
					| expression {}
					;
					
%%

int yyerror(char * message)
{
	fprintf(listing, "Syntax error at line %d: %s\n", lineno,message);
	fprintf(listing, "Current token: ");
	printToken(yycahr, tokenString);
	Error = TRUE;
	return 0;
}

static int yylex(void)
{
	return getToken();
}

TreeNode * parse(void)
{
	yyparse();
	return savedTree;
}
