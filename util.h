#ifndef _UTIL_H_
#define _UTIL_H_

void printToken(TokenType, const char* );

TreeNode * newFuncNode();

TreeNode * newDeclareNode();

TreeNode * newParamNode();

TreeNode * newStmtNode(StmtKind);

TreeNode * newFactorNode(FactorKind);

char * copyString(char *);

void printTree( TreeNode *);

#endif

