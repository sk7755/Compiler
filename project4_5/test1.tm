############### Data segment ###############
.data
newline: .asciiz "\n"
input_prompt: .asciiz "Enter value for IN instruction : "
output_prompt: .asciiz "OUT instruction prints : "
############### Code segment ###############
.text
#DeclareK INT
#DeclareK INT
#DeclareK INTARR
#DeclareK INTARR
#DeclareK INT

dfs:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#ParamK x
#ParamK y
#ParamK p
#ParamK m
#ParamK n
#FuncK Statements
#CompoundK Declarations
#CompoundK Statements
#IfK condition
#ExpK righthand
#ExpK righthand
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK lefthand
#IdK N
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 4($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK /
div $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK p
lw $v0, 12($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK ==
seq $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label0
#IfK then
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#IdK n
lw $v0, 4($fp)
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
label1:
#WhileK condition
#ExpK righthand
#IdK N
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 4($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK <
slt $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label2
#WhileK statement
#CompoundK Declarations
#CompoundK Statements
#ExpK righthand
#ExpK righthand
#ArrK X[]
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
addi $v0, $v0, 8
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK x
lw $v0, 20($fp)
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
#IdK x
addi $sp, $sp, -4
addi $v0, $fp, 20
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#ExpK righthand
#ExpK righthand
#ArrK Y[]
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
addi $v0, $v0, 92
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK y
lw $v0, 16($fp)
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
#IdK y
addi $sp, $sp, -4
addi $v0, $fp, 16
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#ExpK righthand
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
lw $v0, -8($fp)
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
beq $zero, $zero, label1
label2:
#IfK condition
#ExpK righthand
#ExpK righthand
#ExpK righthand
#IdK y
lw $v0, 16($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK y
lw $v0, 16($fp)
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
#ExpK lefthand
#ExpK righthand
#IdK x
lw $v0, 20($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK x
lw $v0, 20($fp)
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
#ExpK lefthand
#IdK ans
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 176($v1)
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
beq $v0, $zero, label3
#IfK then
#ExpK righthand
#ExpK righthand
#ExpK righthand
#IdK y
lw $v0, 16($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK y
lw $v0, 16($fp)
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
#ExpK lefthand
#ExpK righthand
#IdK x
lw $v0, 20($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK x
lw $v0, 20($fp)
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
#ExpK lefthand
#IdK ans
addi $sp, $sp, -4
addi $v1, $zero, 1
sllv $v1, $v1, 28
addi $v0, $v1, 176
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
#ReturnK computation
#IdK tmp
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 0($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ReturnK return seq
lw $t0, 0($sp)
addi $sp, $fp, 0
lw $fp, 0($sp)
lw $ra, -4($sp)
addi $sp, $sp, 24
jr $ra
label0:
#IfK condition
#ExpK righthand
#ExpK righthand
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK lefthand
#IdK N
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 4($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK /
div $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK m
lw $v0, 8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK ==
seq $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label4
#IfK then
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#IdK n
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
addi $sp, $sp, -4
addi $v0, $fp, -12
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
#ExpK righthand
#IdK N
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 4($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
lw $v0, -12($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK <
slt $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label6
#WhileK statement
#CompoundK Declarations
#CompoundK Statements
#ExpK righthand
#ExpK righthand
#ArrK X[]
#IdK i
lw $v0, -12($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 8
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK x
lw $v0, 20($fp)
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
#IdK x
addi $sp, $sp, -4
addi $v0, $fp, 20
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#ExpK righthand
#ExpK righthand
#ArrK Y[]
#IdK i
lw $v0, -12($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 92
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK y
lw $v0, 16($fp)
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
#IdK y
addi $sp, $sp, -4
addi $v0, $fp, 16
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#ExpK righthand
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
lw $v0, -12($fp)
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
addi $v0, $fp, -12
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
#IfK condition
#ExpK righthand
#ExpK righthand
#IdK y
lw $v0, 16($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK y
lw $v0, 16($fp)
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
#ExpK lefthand
#ExpK righthand
#IdK x
lw $v0, 20($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK x
lw $v0, 20($fp)
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
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label7
#IfK then
#ExpK righthand
#ExpK righthand
#ExpK righthand
#IdK y
lw $v0, 16($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK y
lw $v0, 16($fp)
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
#ExpK lefthand
#ExpK righthand
#IdK x
lw $v0, 20($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK x
lw $v0, 20($fp)
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
#ExpK lefthand
#IdK ans
addi $sp, $sp, -4
addi $v1, $zero, 1
sllv $v1, $v1, 28
addi $v0, $v1, 176
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
label7:
#ReturnK computation
#IdK tmp
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 0($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ReturnK return seq
lw $t0, 0($sp)
addi $sp, $fp, 0
lw $fp, 0($sp)
lw $ra, -4($sp)
addi $sp, $sp, 24
jr $ra
label4:
#CallK Argument Computation
#ExpK righthand
#ArrK X[]
#IdK n
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
addi $v0, $v0, 8
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK x
lw $v0, 20($fp)
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
#ExpK righthand
#ArrK Y[]
#IdK n
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
addi $v0, $v0, 92
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK y
lw $v0, 16($fp)
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
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK p
lw $v0, 12($fp)
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
#IdK m
lw $v0, 8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK n
lw $v0, 4($fp)
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
jal dfs
addi $sp, $sp, -4
sw $t0, 0($sp)
#CallK Argument Computation
#ExpK righthand
#ArrK X[]
#IdK n
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
addi $v0, $v0, 8
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK x
lw $v0, 20($fp)
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
#ExpK righthand
#ArrK Y[]
#IdK n
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
addi $v0, $v0, 92
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK y
lw $v0, 16($fp)
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
#IdK p
lw $v0, 12($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK m
lw $v0, 8($fp)
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
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK n
lw $v0, 4($fp)
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
jal dfs
addi $sp, $sp, -4
sw $t0, 0($sp)
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -24
jr $ra

main:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#FuncK Statements
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#DeclareK INT
addi $sp, $sp, -4
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
#IdK T
addi $sp, $sp, -4
addi $v0, $fp, -12
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
label8:
#WhileK condition
#IdK T
lw $v0, -12($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label9
#WhileK statement
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#ConstK 987651345
addi $sp, $sp, -4
li $v0, 987651345
sw $v0, 0($sp)
#ExpK lefthand
#IdK ans
addi $sp, $sp, -4
addi $v1, $zero, 1
sllv $v1, $v1, 28
addi $v0, $v1, 176
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
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
addi $v0, $v1, 4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#ExpK righthand
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
addi $sp, $sp, -4
addi $v0, $fp, -16
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
label10:
#WhileK condition
#ExpK righthand
#IdK N
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 4($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
lw $v0, -16($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK <
slt $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label11
#WhileK statement
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
#ArrK X[]
#IdK i
lw $v0, -16($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 8
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
#ArrK Y[]
#IdK i
lw $v0, -16($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 92
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
#ExpK righthand
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK i
lw $v0, -16($fp)
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
addi $v0, $fp, -16
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
beq $zero, $zero, label10
label11:
#CallK Argument Computation
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal dfs
addi $sp, $sp, -4
sw $t0, 0($sp)
#IdK ans
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 176($v1)
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
#ExpK righthand
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK T
lw $v0, -12($fp)
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
#IdK T
addi $sp, $sp, -4
addi $v0, $fp, -12
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
beq $zero, $zero, label8
label9:
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -4
jr $ra
