#ifndef _UTIL_H_
#define _UTIL_H_

void printToken(TokenType, const char* );

TreeNode * newStmtnode(StmtKind);

TreeNode * newExpNode(ExpKind);

char * copyString(char *);

void printTree( TreeNode *);

#endif

