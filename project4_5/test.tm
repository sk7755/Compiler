.text
getIdx:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#FuncK Statements
#CompoundK Declarations
#CompoundK Statements
#ExpK lefthand
#IdK idx
addi $sp, $sp, -4
addi $v0, $fp, -8
sw $v0, 0($sp)
#ExpK righthand
#ConstK 44
addi $sp, $sp, -4
li $v0, 44
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#ReturnK computation
#IdK idx
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ReturnK return seq
lw $t0, 0($sp)
addi $sp, $fp, 0
lw $fp, 0($sp)
lw $ra, -4($sp)
addi $sp, $sp, 4
jr $ra
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -4
jr $ra

func:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#ParamK paramA
#ParamK paramB
#FuncK Statements
#CompoundK Declarations
#CompoundK Statements
#ExpK lefthand
#IdK aVar
addi $sp, $sp, -4
addi $v0, $fp, -408
sw $v0, 0($sp)
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#ExpK lefthand
#IdK bVar
addi $sp, $sp, -4
addi $v0, $fp, -412
sw $v0, 0($sp)
#ExpK righthand
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#IfK condition
#ExpK lefthand
#IdK aVar
lw $v0, -408($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK righthand
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK <=
sle $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label0
#IfK then
#CompoundK Declarations
#CompoundK Statements
#ExpK lefthand
#IdK cVar
addi $sp, $sp, -4
addi $v0, $fp, -420
sw $v0, 0($sp)
#ExpK righthand
#ExpK lefthand
#IdK paramA
lw $v0, 8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK righthand
#ArrK paramB[]
#ExpK lefthand
#IdK bVar
lw $v0, -412($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK righthand
#CallK Argument Computation
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal getIdx
addi $sp, $sp, -4
sw $t0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK +
add $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
li $v1, 4
mul $v0, $v0, $v1
add, $v0, $v0, $fp
addi, $v0, $v0, 4
lw $v0, 0($v0)
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK +
add $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#ExpK lefthand
#IdK aVar
addi $sp, $sp, -4
addi $v0, $fp, -408
sw $v0, 0($sp)
#ExpK righthand
#ExpK lefthand
#IdK bVar
lw $v0, -412($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK righthand
#IdK cVar
lw $v0, -420($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK *
mul $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
label1:
#WhileK condition
#ExpK lefthand
#IdK bVar
lw $v0, -412($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK righthand
#IdK aVar
lw $v0, -408($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK !=
sne $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label2
#WhileK statement
#CompoundK Declarations
#CompoundK Statements
#ExpK lefthand
#IdK dVar
addi $sp, $sp, -4
addi $v0, $fp, -424
sw $v0, 0($sp)
#ExpK righthand
#ExpK lefthand
#ExpK lefthand
#IdK aVar
lw $v0, -408($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK righthand
#IdK bVar
lw $v0, -412($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK /
div $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK righthand
#CallK Argument Computation
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal getIdx
addi $sp, $sp, -4
sw $t0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK +
add $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 0($sp)
lw $v0, 4($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
beq $zero, $zero, label1
label2:
label0:
#ReturnK computation
#IdK ret
lw $v0, -416($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ReturnK return seq
lw $t0, 0($sp)
addi $sp, $fp, 0
lw $fp, 0($sp)
lw $ra, -4($sp)
addi $sp, $sp, 4
jr $ra
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -4
jr $ra

main:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#FuncK Statements
#CompoundK Declarations
#CompoundK Statements
#CallK Argument Computation
#IdK locVar
lw $v0, -408($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#IdK locArr
lw $v0, -404($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal func
addi $sp, $sp, -4
sw $t0, 0($sp)
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -4
jr $ra