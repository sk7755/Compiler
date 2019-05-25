#include "globals.h"
//#include "symtab.h"
#include "analyze.h"

static int location = 0;

static void traverse(TreeNode *t,
		void (* preProc) (TreeNode *),
		void (* postProc) (TreeNode *) )
{
	if (t != NULL){
		preProc(t);
		int i;
		for( i = 0;i<MAXCHILDREN; i++)
			traverse(t->child[i], preProc, postProc);
	}
	postProc(t);
	traverse(t->sibling, preProc, postProc);
}

static void nullProc(TreeNode * t)
{
	if(t == NULL) return ;
	else return;
}

static void insertNode( TreeNode * t)
{}

void buildSymtab(TreeNode * syntaxTree)
{}

static void typeError(TreeNode * t, char * message)
{
	fprintf(listing, "Type error at line %d: %s\n", t->lineno,message);
	Error = TRUE;
}

static void checkNode(TreeNode *t)
{
}

void typeCheck(TreeNode * syntaxTree)
{
	traverse(syntaxTree, nullProc, checkNode);
}
