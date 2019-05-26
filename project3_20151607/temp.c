
//Error Number
typedef enum{NON_DECL, RE_DECL, VOID_DECL, NOT_ARR, NOT_FUNC, VOID_RETURN,		//Symbol Error
	EXP_TYPE, ARR_IDX_TYPE, COND_TYPE, ARG_TYPE, ARG_NUM, RETURN_TYPE,					//Type Error
	MAIN_RETURN, MAIN_PARAM, MAIN_DECL 											//Main Function Error
}ERR_NUM;

//Error Message
const char *ErrorMessage[] = {
	"This variable is not declared",									//NON_DECL
	"This variable is re-declared",										//RE_DECL
	"Can not declare void type variable",								//VOID_DECL
	"This variable is not array type",									//NOT_ARR
	"This call procedure is not decalred to be function",				//NOT_FUNC
	"Void return function can not have return statement",				//VOID_RETURN
	"Type in expression must be integer",								//EXP_TYPE
	"Type in array index must be integer",								//ARR_IDX_TYPE
	"Type in condition must be integer",								//COND_TYPE
	"Passing argument type is not matched to declaration",				//ARG_TYPE
	"The number of passing arguments is not matched to declaration",	//ARG_NUM
	"Type of return expression is not matched to declaration",			//RETURN_TYPE
	"Main function must be declared with return void type",				//MAIN_RETURN
	"Main function must be declared with void parameter",				//MAIN_PARAM
	"Main function must be declared as the last function"				//MAIN_DECL
};

static void 
printError(TreeNode* t, char* message)
{
	fprintf(listing, "ERROR in line %d : %s\n", t->lineno, message);
	Error = TRUE;
	exit(1);
}


