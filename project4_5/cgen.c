#include "cgen.h"
#include "symtab.h"
#include "globals.h"

static int used_label= -1;
#define LABEL_LEN 10
static void genLabel(char *lab_name){
	sprintf(lab_name, "label%d",++used_label);
}

void genCode(TreeNode *tree, int isAddr, FILE *codeFile)
{
	//printf("%d %s %d %d %d %d\n",isAddr,tree->name,tree->nodekind,FactorK, tree->kind.factor, IdK);
	char lab1[LABEL_LEN];
	char lab2[LABEL_LEN];
	TreeNode *p;
	int left_isAddr;
	int i;
	switch(tree->nodekind){
		case FactorK:
			switch(tree->kind.factor){
				case IdK:
					if(isAddr){
						fprintf(codeFile,"addi $sp, $sp, -4\n");
						if(tree->symbol->isGlobal)
							fprintf(codeFile,"addi $sp, $zero, %d\n",tree->symbol->loc.mem_loc);
						else
							fprintf(codeFile,"addi $sp, $fp, %d\n",tree->symbol->loc.func_loc);
					}
					else{
						if(tree->symbol->isGlobal)
							fprintf(codeFile,"lw v0, %d\n", tree->symbol->loc.mem_loc);
						else
							fprintf(codeFile,"lw v0, %d($fp)\n", tree->symbol->loc.func_loc);
						fprintf(codeFile,"addi $sp, $sp, -4\n");
						fprintf(codeFile,"addi $sp, $v0, 0\n");
					}
					break;
				case ArrK:
					genCode(tree->child[0], 0, codeFile);
					fprintf(codeFile,"addi $v0, $sp, 0\n");
					fprintf(codeFile,"li $v1, 4\n");
					fprintf(codeFile,"mul, $v0, $v1\n");
					if(tree->symbol->isGlobal)
						fprintf(codeFile,"addi, $v0, $v0, %d\n",tree->symbol->loc.mem_loc);
					else{
						fprintf(codeFile,"add, $v0, $v0, $fp\n");
						fprintf(codeFile,"addi, $v0, $v0, %d\n",tree->symbol->loc.func_loc);
					}
					fprintf(codeFile,"lw $v0, $v0\n");
					fprintf(codeFile,"addi $sp, $v0, 0\n");
					break;
				case ConstK:
					fprintf(codeFile,"addi $sp, $sp, -4\n");
					fprintf(codeFile,"li $sp, %d\n",tree->val);
					break;
			}
			break;
		case StmtK:
			switch(tree->kind.stmt){
				case IfK:
					genCode(tree->child[0],0,codeFile);
					fprintf(codeFile,"addi $v0, $sp, 0\n");
					fprintf(codeFile,"addi $sp, $sp, 4\n");
					genLabel(lab1);
					fprintf(codeFile,"beq $v0, $zero, %s\n",lab1);
					genCode(tree->child[1],0,codeFile);

					if(tree->child[2]){				//else part
						genLabel(lab2);
						fprintf(codeFile,"beq $zero, $zero, %s\n",lab2);
					}
					fprintf(codeFile,"%s:\n",lab1);
					if(tree->child[2]){
						genCode(tree->child[2], 0, codeFile);
						fprintf(codeFile,"%s:\n",lab2);
					}
					break;
				case WhileK:
					genLabel(lab1);
					genLabel(lab2);
					fprintf(codeFile,"%s:\n",lab1);
					genCode(tree->child[0], 0, codeFile);
					fprintf(codeFile,"addi $v0, $sp, 0\n");
					fprintf(codeFile,"addi $sp, $sp, 4\n");
					fprintf(codeFile,"beq $v0, $zero, %s\n",lab2);
					genCode(tree->child[1], 0, codeFile);
					fprintf(codeFile,"beq $zero, $zero, %s\n",lab1);
					fprintf(codeFile,"%s:\n",lab2);
					break;
				case ReturnK:
					break;
				case CompoundK:
					p = tree->child[0];
					while(p){
						genCode(p,0,codeFile);
						p = p->sibling;
					}
					p = tree->child[1];
					while(p){
						genCode(p,0,codeFile);
						p = p->sibling;
					}
					break;
				case ExpK:
					left_isAddr = 0;
					if(tree->op == ASSIGN)
						left_isAddr = 1;
					genCode(tree->child[0],left_isAddr,codeFile);
					genCode(tree->child[1],0,codeFile);

					fprintf(codeFile,"addi $v1, $sp, 0\n");	//righthand side
					fprintf(codeFile,"addi $v0, $sp, 4\n");	//lefthand side
					fprintf(codeFile,"addi $sp, $sp, 8\n");

					switch(tree->op){
						case ASSIGN:
							fprintf(codeFile,"sw $v1, $v0\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v1, 0\n");
							break;
						case EQ:
							fprintf(codeFile,"seq $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v0, 0\n");
							break;
						case NEQ:
							fprintf(codeFile,"sne $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v0, 0\n");
							break;
						case LT:
							fprintf(codeFile,"slt $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v0, 0\n");
							break;
						case LEQ:
							fprintf(codeFile,"sle $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v0, 0\n");
							break;
						case GT:
							fprintf(codeFile,"sgt $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v0, 0\n");
							break;
						case GEQ:
							fprintf(codeFile,"sge $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v0, 0\n");
							break;
						case PLUS:
							fprintf(codeFile,"add $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v0, 0\n");
							break;
						case MINUS:
							fprintf(codeFile,"sub $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v0, 0\n");
							break;
						case TIMES:
							fprintf(codeFile,"mul $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v0, 0\n");
							break;
						case DIVIDE:
							fprintf(codeFile,"div $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"addi $sp, $v0, 0\n");
							break;	
					}
					break;
			}	
			break;
		case DeclareK:
			switch(tree->op){
				case INT:
					if(tree->symbol->isGlobal)
						;
					else
						fprintf(codeFile,"addi $sp, $sp, -4\n");
					break;
				case INTARR:
					if(tree->symbol->isGlobal)
						;
					else
						fprintf(codeFile,"addi $sp, $sp, -%d\n",4*tree->val);
					break;
			}
			break;
		case FuncK:
			fprintf(codeFile,"%s:\n",tree->name);
			p = tree->child[0];
			while(p){
				genCode(p,0,codeFile);
				p = p->sibling;
			}
			p = tree->child[1];
			while(p){
				genCode(p,0,codeFile);
				p = p->sibling;
			}
			break;
		case ParamK:
			break;
		case CallK:
			p = tree->child[0];
			while(p){
				genCode(p,0,codeFile);
				p = p->sibling;
			}
			fprintf(codeFile,"addi $sp, $sp, -4\n");
			fprintf(codeFile,"addi $sp, $fp, 0\n");
			fprintf(codeFile,"addi $fp, $sp, 0\n");
			fprintf(codeFile,"addi $sp, $sp, -4\n");
			fprintf(codeFile,"addi, $sp, 
			break;
	}
	if(tree->sibling){
		genCode(tree->sibling,0,codeFile);
	}
}
