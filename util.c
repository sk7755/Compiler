#include "globals.h"
#include "util.h"

void printToken(TokenType token, const char *tokenString)
{
	char *tokenID;
	switch(token){
		case IF:
			tokenID = "IF";
		case ELSE:
			tokenID = "ELSE";
		case INT:
			tokenID = "INT";
		case RETURN:
			tokenID = "RETURN";
		case VOID:
			tokenID = "VOID";
		case WHILE:
			tokenID = "WHILE";
		case NUM:
			tokenID = "NUM";
		case ID:
			tokenID = "ID";
			fprintf(listing,"\t%s\t\t%s\n",tokenID,tokenString);
			break;
		case ASSIGN:
		case LT:
		case LEQ:
		case GT:
		case GEQ:
		case EQ:
		case NEQ:
		case LPAREN:
		case RPAREN:
		case LCB:
		case RCB:
		case LSB:
		case RSB:
		case COMMA:
		case SEMI: 
		case PLUS: 
		case MINUS: 
		case TIMES:
		case DIVIDE:
			fprintf(listing,"\t%s\t\t%s\n",tokenString,tokenString);
			break;
		case ENDFILE:
			fprintf(listing,"\tEOF\n");
			break;
		case COMERR:
			fprintf(listing,"\tERROR\t\tComment Error\n");
			break;
		case ERROR:
		default:
			fprintf(listing, "Unknown token: %d\n", token);
	}
}

TreeNode * newFuncNode()
{
	TreeNode *t = (TreeNode *)malloc(sizeof(TreeNode));
	int i;
	if (t == NULL)
		fprintf(listing, "Out of memory error at line %d\n",lineno);
	else{
		for (i=0;i<MAXCHILDREN;i++)
			t->child[i] = NULL;
		t->sibling = NULL;
		t->op = 0;
		t->name = NULL;
		t->val = 0;
		t->nodekind = FuncK;
		t->lineno = lineno;
	}
	return t; 
}

TreeNode * newDeclareNode()
{
	TreeNode *t = (TreeNode *)malloc(sizeof(TreeNode));
	int i;
	if (t == NULL)
		fprintf(listing, "Out of memory error at line %d\n",lineno);
	else{
		for (i=0;i<MAXCHILDREN;i++)
			t->child[i] = NULL;
		t->sibling = NULL;
		t->op = 0;
		t->name = NULL;
		t->val = 0;
		t->nodekind = DeclareK;
		t->lineno = lineno;
	}
	return t; 
}

TreeNode * newParamNode()
{
	TreeNode *t = (TreeNode *)malloc(sizeof(TreeNode));
	int i;
	if (t == NULL)
		fprintf(listing, "Out of memory error at line %d\n",lineno);
	else{
		for (i=0;i<MAXCHILDREN;i++)
			t->child[i] = NULL;
		t->sibling = NULL;
		t->op = 0;
		t->name = NULL;
		t->val = 0;
		t->nodekind = ParamK;
		t->lineno = lineno;
	}
	return t;
}

TreeNode * newStmtNode(StmtKind kind)
{
	TreeNode *t = (TreeNode *)malloc(sizeof(TreeNode));
	int i;
	if (t == NULL)
		fprintf(listing, "Out of memory error at line %d\n",lineno);
	else{
		for (i=0;i<MAXCHILDREN;i++)
			t->child[i] = NULL;
		t->sibling = NULL;
		t->op = 0;
		t->name = NULL;
		t->val = 0;
		t->nodekind = StmtK;
		t->kind.stmt = kind;
		t->lineno = lineno;
	}
	return t;
}

TreeNode * newFactorNode(FactorKind kind)
{
	TreeNode *t = (TreeNode *)malloc(sizeof(TreeNode));
	int i;
	if (t == NULL)
		fprintf(listing, "Out of memory error at line %d\n",lineno);
	else{
		for (i=0;i<MAXCHILDREN;i++)
			t->child[i] = NULL;
		t->sibling = NULL;
		t->op = 0;
		t->name = NULL;
		t->val = 0;
		t->nodekind = FactorK;
		t->kind.factor = kind;
		t->lineno = lineno;
	}
	return t;
}

TreeNode * newCallNode()
{
	TreeNode *t = (TreeNode *)malloc(sizeof(TreeNode));
	int i;
	if (t == NULL)
		fprintf(listing, "Out of memory error at line %d\n",lineno);
	else{
		for (i=0;i<MAXCHILDREN;i++)
			t->child[i] = NULL;
		t->sibling = NULL;
		t->op = 0;
		t->name = NULL;
		t->val = 0;
		t->nodekind = CallK;
		t->lineno = lineno;
	}
	return t;

}

char * copyString(char *s)
{
	int n;
	char *t;
	if (s==NULL) return NULL;
	n = strlen(s) + 1;
	t = malloc(n);
	if(t==NULL)
		fprintf(listing, "Out of memory error at line %d\n", lineno);
	else
		strcpy(t,s);
	return t;
}

static int indentno = 0;

#define INDENT indentno+=2
#define UNINDENT indentno-=2

static void printSpaces(void)
{
	int i;
	for(i = 0;i<indentno;i++)
		fprintf(listing, " ");
}

#define PRINT_TYPE(x) do{ \
							switch(x->op):\
								case INT : printf(listing,"Type = Int\n");\
										break;\
								case VOID : printf(listing,"Type = Void\n");\
										break;\
								case INTARR : printf(listing,"Type = array %d\n",x->val);\
										break;\
						}while(0)
					
#define PRINT_OP(x) do{ \
						
					}while(0)
void printTree(TreeNode *tree)
{
	
	int i;
	INDENT;
	
	while(tree != NULL){
		printSpaces();

		if(tree->nodekind == FuncK){
			fprintf(listing,"Function = %s\n",tree->name);
			printSapces(); PRINT_TYPE(tree);
			if(tree->child[0])
				printTree(tree->child[0]);
			else{ printSpaces(); fprintf(listing,"Parameter = (null)\n");}

			printTree(tree->child[1]);
		}
		else if(tree->nodeKind == ParamK){
			fprintf(listing,"Parameter = %s\n",tree->name);
			printSpaces(); PRINT_TYPE(tree);
		}
		else if(tree->nodekind == DeclareK){
			fprintf(listing,"ID: %s\n",tree->name);
			printSpaces();PRINT_TYPE(tree);
		}
		else if(tree->nodekind == CallK){
			fprintf(listing,"Call procedure = %s",tree->name);
			printTree(tree->child[0]);
		}
		else if(tree->nodekind == FactorK){
			switch(tree->kind.factor){
				case IdK:
					fprintf(listing,"ID: %s\n",tree->name);
					break;
				case ArrK:
					fprintf(listing,"ID: %s\n",tree->name);
					printTree(tree->child[0]);
					break;
				case ConstK:
					fprintf(listing,"const: %d\n",tree->val);
					break;
			}
		}
		else if(tree->nodekind == StmtK){
			switch(tree->kind.stmt){
				case IfK:
					fprintf(listing,"If\n");
					break;
				case WhileK:
					fprintf(listing,"While\n");
					break;
				case ReturnK:
					fprintf(listing,"Return\n");
					break;
				case CompoundK:
					fprintf(listing,"Compound\n");
					break;
				case ExpK:
					fprintf(listing,"Op: %s\n",);

					break;
			}
		}
		if(tree->nodekind==StmtK){
			switch(tree->kind.stmt){
				case IfK:
					fprintf(listing,"If\n");
					break;
				case RepeatK:
					fprintf(listing,"Repeat\n");
					break;
				case AssignK:
					fprintf(listing,"Assign to: %s\n",tree->attr.name);
					break;
				case ReadK:
					fprintf(listing,"Read: %s\n\n",tree->attr.name);
					break;
				case WriteK:
					fprintf(listing,"Write\n");
					break;
				default:
					fprintf(listing,"Unknown ExpNode kind\n");
					break;
			}
		}
		else if(tree->nodekind==ExpK){
			switch(tree->kind.exp){
				case OpK:
					fprintf(listing, "Op: ");
					printToken(tree->attr.op,"\0");
					break;
				case ConstK:
					fprintf(listing, "const: %d\n",tree->attr.val);
					break;
				case IdK:
					fprintf(listing, "Id: %s\n",tree->attr.name);
					break;
				default:
					fprintf(listing, "Unknown ExpNode kind\n");
					break;
			}
		}
		else
			fprintf(listing, "Unknown node kind\n");
		
		for(i = 0; i < MAXCHILDREN; i++)
			printTree(tree->child[i]);
		tree = tree->sibling;
	}
	
	UNINDENT;
}

