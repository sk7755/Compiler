#include "cgen.h"
#include "symtab.h"
#include "globals.h"

static int used_label= -1;
static int parameter_size;
#define LABEL_LEN 10
static void genLabel(char *lab_name){
	sprintf(lab_name, "label%d",++used_label);
}

void genCode(TreeNode *tree, int isAddr, FILE *codeFile)
{
	if(tree == NULL)
		return;
	
	char lab1[LABEL_LEN];
	char lab2[LABEL_LEN];
	TreeNode *p;
	int left_isAddr;
	int i;
	switch(tree->nodekind){
		case FactorK:
			switch(tree->kind.factor){
				case IdK:
					fprintf(codeFile,"#IdK %s\n",tree->name);
					if(isAddr || tree->op == INTARR){
						fprintf(codeFile,"addi $sp, $sp, -4\n");
						if(tree->symbol->isGlobal){
							fprintf(codeFile,"addi $v0, $zero, %d\n",tree->symbol->loc.mem_loc);
							fprintf(codeFile,"sw $v0, 0($sp)\n");
						}
						else{
							fprintf(codeFile,"addi $v0, $fp, %d\n",tree->symbol->loc.func_loc);
							fprintf(codeFile,"sw $v0, 0($sp)\n");
						}
					}
					else{
						if(tree->symbol->isGlobal)
							fprintf(codeFile,"lw $v0, %d\n", tree->symbol->loc.mem_loc);
						else
							fprintf(codeFile,"lw $v0, %d($fp)\n", tree->symbol->loc.func_loc);
						fprintf(codeFile,"addi $sp, $sp, -4\n");
						fprintf(codeFile,"sw $v0, 0($sp)\n");
					}
					break;
				case ArrK:
					fprintf(codeFile,"#ArrK %s[]\n",tree->name);
					genCode(tree->child[0], 0, codeFile);
					fprintf(codeFile,"lw $v0, 0($sp)\n");
					fprintf(codeFile,"li $v1, 4\n");
					fprintf(codeFile,"mul $v0, $v0, $v1\n");
					if(tree->symbol->isGlobal)
						fprintf(codeFile,"addi, $v0, $v0, %d\n",tree->symbol->loc.mem_loc);
					else{
						fprintf(codeFile,"add, $v0, $v0, $fp\n");
						fprintf(codeFile,"addi, $v0, $v0, %d\n",tree->symbol->loc.func_loc);
					}
					fprintf(codeFile,"lw $v0, 0($v0)\n");
					fprintf(codeFile,"sw $v0, 0($sp)\n");
					break;
				case ConstK:
					fprintf(codeFile,"#ConstK %d\n",tree->val);
					fprintf(codeFile,"addi $sp, $sp, -4\n");
					fprintf(codeFile,"li $v0, %d\n",tree->val);
					fprintf(codeFile,"sw $v0, 0($sp)\n");
					break;
			}
			break;
		case StmtK:
			switch(tree->kind.stmt){
				case IfK:
					fprintf(codeFile,"#IfK condition\n");
					genCode(tree->child[0],0,codeFile);
					fprintf(codeFile,"lw $v0, 0($sp)\n");
					fprintf(codeFile,"addi $sp, $sp, 4\n");
					genLabel(lab1);
					fprintf(codeFile,"beq $v0, $zero, %s\n",lab1);
					fprintf(codeFile,"#IfK then\n");
					genCode(tree->child[1],0,codeFile);

					if(tree->child[2]){				//else part
						genLabel(lab2);
						fprintf(codeFile,"beq $zero, $zero, %s\n",lab2);
					}
					fprintf(codeFile,"%s:\n",lab1);
					if(tree->child[2]){
						fprintf(codeFile,"#IfK else\n");
						genCode(tree->child[2], 0, codeFile);
						fprintf(codeFile,"%s:\n",lab2);
					}
					break;
				case WhileK:
					genLabel(lab1);
					genLabel(lab2);
					fprintf(codeFile,"%s:\n",lab1);
					fprintf(codeFile,"#WhileK condition\n");
					genCode(tree->child[0], 0, codeFile);
					fprintf(codeFile,"lw $v0, 0($sp)\n");
					fprintf(codeFile,"addi $sp, $sp, 4\n");
					fprintf(codeFile,"beq $v0, $zero, %s\n",lab2);
					fprintf(codeFile,"#WhileK statement\n");
					genCode(tree->child[1], 0, codeFile);
					fprintf(codeFile,"beq $zero, $zero, %s\n",lab1);
					fprintf(codeFile,"%s:\n",lab2);
					break;
				case ReturnK:
					fprintf(codeFile,"#ReturnK computation\n");
					genCode(tree->child[0], 0, codeFile);
					fprintf(codeFile,"#ReturnK return seq\n");
					fprintf(codeFile,"lw $t0, 0($sp)\n");
					fprintf(codeFile,"addi $sp, $fp, 0\n");
					fprintf(codeFile,"lw $fp, 0($sp)\n");
					fprintf(codeFile,"lw $ra, -4($sp)\n");
					fprintf(codeFile,"addi $sp, $sp, %d\n",4 + parameter_size);
					fprintf(codeFile,"jr $ra\n");
					break;
				case CompoundK:
					fprintf(codeFile,"#CompoundK Declarations\n");
					genCode(tree->child[0],0,codeFile);
					fprintf(codeFile,"#CompoundK Statements\n");
					genCode(tree->child[1],0, codeFile);
					break;
				case ExpK:
					left_isAddr = 0;
					if(tree->op == ASSIGN)
						left_isAddr = 1;
					fprintf(codeFile,"#ExpK lefthand\n");
					genCode(tree->child[0],left_isAddr,codeFile);
					fprintf(codeFile,"#ExpK righthand\n");
					genCode(tree->child[1],0,codeFile);

					fprintf(codeFile,"#ExpK operation\n");
					fprintf(codeFile,"lw $v1, 0($sp)\n");	//righthand side
					fprintf(codeFile,"lw $v0, 4($sp)\n");	//lefthand side
					fprintf(codeFile,"addi $sp, $sp, 8\n");

					switch(tree->op){
						case ASSIGN:
							fprintf(codeFile,"#ExpK =\n");
							fprintf(codeFile,"sw $v1, 0($v0)\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v1, 0($sp)\n");
							break;
						case EQ:
							fprintf(codeFile,"#ExpK ==\n");
							fprintf(codeFile,"seq $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v0, 0($sp)\n");
							break;
						case NEQ:
							fprintf(codeFile,"#ExpK !=\n");
							fprintf(codeFile,"sne $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v0, 0($sp)\n");
							break;
						case LT:
							fprintf(codeFile,"#ExpK <\n");
							fprintf(codeFile,"slt $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v0, 0($sp)\n");
							break;
						case LEQ:
							fprintf(codeFile,"#ExpK <=\n");
							fprintf(codeFile,"sle $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v0, 0($sp)\n");
							break;
						case GT:
							fprintf(codeFile,"#ExpK >\n");
							fprintf(codeFile,"sgt $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v0, 0($sp)\n");
							break;
						case GEQ:
							fprintf(codeFile,"#ExpK >=\n");
							fprintf(codeFile,"sge $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v0, 0($sp)\n");
							break;
						case PLUS:
							fprintf(codeFile,"#ExpK +\n");
							fprintf(codeFile,"add $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v0, 0($sp)\n");
							break;
						case MINUS:
							fprintf(codeFile,"#ExpK -\n");
							fprintf(codeFile,"sub $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v0, 0($sp)\n");
							break;
						case TIMES:
							fprintf(codeFile,"#ExpK *\n");
							fprintf(codeFile,"mul $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v0, 0($sp)\n");
							break;
						case DIVIDE:
							fprintf(codeFile,"#ExpK /\n");
							fprintf(codeFile,"div $v0, $v0, $v1\n");
							fprintf(codeFile,"addi $sp, $sp, -4\n");
							fprintf(codeFile,"sw $v0, 0($sp)\n");
							break;	
					}
					break;
			}	
			break;
		case DeclareK:
			switch(tree->op){
				case INT:
					fprintf(codeFile,"#DeclareK INT\n");
					if(tree->symbol->isGlobal)
						;
					else
						fprintf(codeFile,"addi $sp, $sp, -4\n");
					break;
				case INTARR:
					fprintf(codeFile,"#DeclareK INTARR\n");
					if(tree->symbol->isGlobal)
						;
					else
						fprintf(codeFile,"addi $sp, $sp, -%d\n",4*tree->val);
					break;
			}
			break;
		case FuncK:
			fprintf(codeFile,"\n%s:\n",tree->name);
			fprintf(codeFile,"#FuncK Return Address Save\n");
			fprintf(codeFile,"addi $fp, $sp, 0\n");
			fprintf(codeFile,"addi $sp, $sp, -4\n");
			fprintf(codeFile,"sw $ra, 0($sp)\n");
			fprintf(codeFile,"#FuncK Parameter\n");	
			parameter_size = 0;
			genCode(tree->child[0], 0, codeFile);

			fprintf(codeFile,"#FuncK Statements\n");
			genCode(tree->child[1], 0, codeFile);

			fprintf(codeFile,"#FuncK Void Return\n");
			fprintf(codeFile, "lw $ra, -4($fp)\n");
			fprintf(codeFile,"addi $sp, $fp, 0\n");
			fprintf(codeFile,"lw $fp, 0($sp)\n");
			fprintf(codeFile,"addi $sp, $sp, -%d\n",4+parameter_size);
			fprintf(codeFile,"jr $ra\n");

			break;
		case ParamK:
			fprintf(codeFile,"#ParamK %s\n",tree->name);
			if(tree->op == INT || tree->op == INTARR)
				parameter_size += 4;
			break;
		case CallK:
			fprintf(codeFile,"#CallK Argument Computation\n");
			genCode(tree->child[0],0,codeFile);
			fprintf(codeFile,"#CallK Call Sequence\n");
			fprintf(codeFile,"addi $sp, $sp, -4\n");
			fprintf(codeFile,"sw $fp, 0($sp)\n");
			fprintf(codeFile,"jal %s\n",tree->name);
			if(tree->op != VOID){
				fprintf(codeFile,"addi $sp, $sp, -4\n");
				fprintf(codeFile,"sw $t0, 0($sp)\n");
			}
			break;
	}
	if(tree->sibling){
		genCode(tree->sibling,0,codeFile);
	}
}
