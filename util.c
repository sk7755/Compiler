#include "globals.h"
#include "util.h"

const char *tokenID[] = 
	{"ENDFILE","ERROR","COMERR",
	"IF","ELSE","INT","RETURN","VOID","WHILE",
	"ID","NUM",
	"ASSIGN","EQ","NEQ","LT","LEQ","GT","GEQ","PLUS","MINUS","TIMES","DIVIDE",
	"LPAREN","RPAREN","LCB","RCB","LSB","RSB","COMMA","SEMI",
	};


void printToken(TokenType token, const char *tokenString)
{
	switch(token){
		case IF:
		case ELSE:
		case INT:
		case RETURN:
		case VOID:
		case WHILE:
		case NUM:
		case ID:
			fprintf(listing,"\t%s\t\t%s\n",tokenID[token],tokenString);
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

TreeNode *newStmtNode(StmtKind kind)
{
	TreeNode *t = (TreeNode *)malloc(sizeof(TreeNode));
	int i;
	if (t == NULL)
		fprintf(listing, "Out of memory error at line %d\n",lineno);
	else{
		for (i=0;i<MAXCHILDREN;i++)
			t->child[i] = NULL;
		t->sibling = NULL;
		t->nodekind = StmtK;
		t->kind.stmt = kind;
		t->lineno = lineno;
	}
	return t;
}

TreeNode *newExpNode(ExpKind kind)
{
	TreeNode *t = (TreeNode *)malloc(sizeof(TreeNode));
	int i;
	if (t == NULL)
		fprintf(listing, "Out of memory error at line %d\n",lineno);
	else{
		for (i=0;i<MAXCHILDREN;i++)
			t->child[i] = NULL;
		t->sibling = NULL;
		t->nodekind = ExpK;
		t->kind.stmt = kind;
		t->lineno = lineno;
		t->type = Void;
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

void printTree(TreeNode *tree)
{
	int i;
	INDENT;
	while(tree != NULL){
		printSpaces();
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

