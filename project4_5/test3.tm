############### Data segment ###############
.data
newline: .asciiz "\n"
input_prompt: .asciiz "Enter value for IN instruction : "
output_prompt: .asciiz "OUT instruction prints : "
############### Code segment ###############
.text
#DeclareK INTARR
#DeclareK INT

insert:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#ParamK value
#FuncK Statements
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
addi $sp, $sp, -4
addi $v0, $fp, -8
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
label0:
#WhileK condition
#ArrK tree[]
#IdK i
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 0
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label1
#WhileK statement
#CompoundK Declarations
#CompoundK Statements
#IfK condition
#ExpK righthand
#IdK value
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#ArrK tree[]
#IdK i
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 0
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK >
sgt $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label2
#IfK then
#ExpK righthand
#ExpK righthand
#IdK i
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK *
mul $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
addi $sp, $sp, -4
addi $v0, $fp, -8
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
beq $zero, $zero, label3
label2:
#IfK else
#ExpK righthand
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#ExpK righthand
#IdK i
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK *
mul $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK +
add $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
addi $sp, $sp, -4
addi $v0, $fp, -8
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
label3:
beq $zero, $zero, label0
label1:
#ExpK righthand
#IdK value
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#ArrK tree[]
#IdK i
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 0
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -8
jr $ra

inOrder:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#ParamK i
#FuncK Statements
#CompoundK Declarations
#CompoundK Statements
#IfK condition
#ExpK righthand
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ExpK lefthand
#ArrK tree[]
#IdK i
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 0
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK !=
sne $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label4
#IfK then
#CompoundK Declarations
#CompoundK Statements
#CallK Argument Computation
#ExpK righthand
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK *
mul $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal inOrder
#ArrK tree[]
#IdK i
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 0
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#output prompt
li $v0, 4
la $a0, output_prompt
syscall

#print int
lw $a0, 0($sp)
addi $sp, $sp, 4
li $v0, 1
syscall
li $v0, 4
la $a0, newline
syscall
#CallK Argument Computation
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#ExpK righthand
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK *
mul $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK +
add $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal inOrder
label4:
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -8
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
#ExpK righthand
#input prompt
li $v0, 4
la $a0, input_prompt
syscall
#read int
li $v0, 5
syscall
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK N
addi $sp, $sp, -4
addi $v1, $zero, 1
sllv $v1, $v1, 28
addi $v0, $v1, 8000
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
label5:
#WhileK condition
#IdK N
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 8000($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label6
#WhileK statement
#CompoundK Declarations
#CompoundK Statements
#CallK Argument Computation
#input prompt
li $v0, 4
la $a0, input_prompt
syscall
#read int
li $v0, 5
syscall
addi $sp, $sp, -4
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal insert
#ExpK righthand
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK N
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 8000($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK -
sub $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK N
addi $sp, $sp, -4
addi $v1, $zero, 1
sllv $v1, $v1, 28
addi $v0, $v1, 8000
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
beq $zero, $zero, label5
label6:
#CallK Argument Computation
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal inOrder
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -4
jr $ra
