############### Data segment ###############
.data
newline: .asciiz "\n"
input_prompt: .asciiz "Enter value for IN instruction : "
output_prompt: .asciiz "OUT instruction prints : "
############### Code segment ###############
.text
#DeclareK INT
#DeclareK INTARR

helloWorld:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#ParamK a
#FuncK Statements
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK a
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
#ExpK lefthand
#IdK a
addi $sp, $sp, -4
addi $v0, $fp, 4
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
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
sw $v0, 0($sp)
#ExpK lefthand
#IdK b
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
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#IdK b
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK a
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
#ReturnK computation
#IdK a
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ReturnK return seq
lw $t0, 0($sp)
addi $sp, $fp, 0
lw $fp, 0($sp)
lw $ra, -4($sp)
addi $sp, $sp, 8
jr $ra
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -8
jr $ra

sumTwo:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#ParamK a
#ParamK b
#FuncK Statements
#CompoundK Declarations
#CompoundK Statements
#ReturnK computation
#ExpK righthand
#IdK b
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK a
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
#ReturnK return seq
lw $t0, 0($sp)
addi $sp, $fp, 0
lw $fp, 0($sp)
lw $ra, -4($sp)
addi $sp, $sp, 12
jr $ra
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -12
jr $ra

sumThree:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#ParamK a
#ParamK b
#ParamK c
#FuncK Statements
#CompoundK Declarations
#CompoundK Statements
#ReturnK computation
#ExpK righthand
#IdK c
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#ExpK righthand
#IdK b
lw $v0, 8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK a
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
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK +
add $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
#ReturnK return seq
lw $t0, 0($sp)
addi $sp, $fp, 0
lw $fp, 0($sp)
lw $ra, -4($sp)
addi $sp, $sp, 16
jr $ra
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -16
jr $ra

sumFour:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#ParamK a
#ParamK b
#ParamK c
#ParamK d
#FuncK Statements
#CompoundK Declarations
#CompoundK Statements
#ReturnK computation
#ExpK righthand
#IdK d
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#ExpK righthand
#IdK c
lw $v0, 8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#ExpK righthand
#IdK b
lw $v0, 12($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK a
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
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK +
add $v0, $v0, $v1
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
#ReturnK return seq
lw $t0, 0($sp)
addi $sp, $fp, 0
lw $fp, 0($sp)
lw $ra, -4($sp)
addi $sp, $sp, 20
jr $ra
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -20
jr $ra

polynomial:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#ParamK n
#ParamK arr
#ParamK x
#FuncK Statements
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ExpK lefthand
#IdK res
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
#ExpK righthand
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ExpK lefthand
#IdK n
lw $v0, 12($fp)
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
beq $v0, $zero, label1
#WhileK statement
#CompoundK Declarations
#CompoundK Statements
#ExpK righthand
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK n
lw $v0, 12($fp)
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
#IdK n
addi $sp, $sp, -4
addi $v0, $fp, 12
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
#ArrK arr[]
#IdK n
lw $v0, 12($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
lw $v1 8($fp)
add $v0, $v0, $v1
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#ExpK righthand
#IdK x
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK res
lw $v0, -8($fp)
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
#IdK res
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
beq $zero, $zero, label0
label1:
#ReturnK computation
#IdK res
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ReturnK return seq
lw $t0, 0($sp)
addi $sp, $fp, 0
lw $fp, 0($sp)
lw $ra, -4($sp)
addi $sp, $sp, 16
jr $ra
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -16
jr $ra

helloGlobal:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#ParamK globalA
#ParamK b
#FuncK Statements
#CompoundK Declarations
#CompoundK Statements
#ExpK righthand
#IdK b
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK globalA
addi $sp, $sp, -4
addi $v0, $fp, 8
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
#IdK b
lw $v0, 4($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#ArrK globalArr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 4
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
addi $sp, $sp, -12
jr $ra

checkGlobalA:
#FuncK Return Address Save
addi $fp, $sp, 0
addi $sp, $sp, -4
sw $ra, 0($sp)
#FuncK Parameter
#FuncK Statements
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#IdK globalA
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 0($v1)
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
label2:
#WhileK condition
#IdK i
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label3
#WhileK statement
#CompoundK Declarations
#CompoundK Statements
#IdK globalA
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 0($v1)
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
#IdK i
lw $v0, -8($fp)
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
beq $zero, $zero, label2
label3:
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
#DeclareK INT
addi $sp, $sp, -4
#DeclareK INT
addi $sp, $sp, -4
#DeclareK INT
addi $sp, $sp, -4
#DeclareK INTARR
addi $sp, $sp, -12
#DeclareK INTARR
addi $sp, $sp, -200
#CompoundK Statements
#ExpK righthand
#ExpK righthand
#ExpK righthand
#ExpK righthand
#ExpK righthand
#ExpK righthand
#ExpK righthand
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
#ArrK testArr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -228
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
#ExpK lefthand
#ArrK arr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
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
#ExpK lefthand
#ArrK arr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
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
#ExpK lefthand
#IdK c
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
#ExpK lefthand
#ArrK testArr[]
#ExpK righthand
#ConstK 3
addi $sp, $sp, -4
li $v0, 3
sw $v0, 0($sp)
#ExpK lefthand
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
#IdK b
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
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK *
mul $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -228
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
#ExpK lefthand
#ArrK arr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
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
#ExpK lefthand
#IdK c
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
#ExpK lefthand
#ArrK testArr[]
#ExpK righthand
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK lefthand
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
#IdK a
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
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK *
mul $v0, $v0, $v1
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -228
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
#IdK a
lw $v0, -8($fp)
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
#IdK b
lw $v0, -12($fp)
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
#IdK c
lw $v0, -16($fp)
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
#ArrK arr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
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
#ArrK testArr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -228
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
#ArrK testArr[]
#ExpK righthand
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK lefthand
#IdK a
lw $v0, -8($fp)
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
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -228
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
#ArrK testArr[]
#ExpK righthand
#ConstK 3
addi $sp, $sp, -4
li $v0, 3
sw $v0, 0($sp)
#ExpK lefthand
#IdK b
lw $v0, -12($fp)
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
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -228
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
#ExpK righthand
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
#IdK a
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
#ExpK lefthand
#ArrK arr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
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
#ArrK arr[]
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
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
#ArrK arr[]
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
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
#CallK Argument Computation
#CallK Argument Computation
#IdK a
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal helloWorld
addi $sp, $sp, -4
sw $t0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal helloWorld
addi $sp, $sp, -4
sw $t0, 0($sp)
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
#IdK a
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ArrK arr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal sumTwo
addi $sp, $sp, -4
sw $t0, 0($sp)
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
#ArrK arr[]
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#IdK a
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal sumTwo
addi $sp, $sp, -4
sw $t0, 0($sp)
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
#CallK Argument Computation
#ConstK 3
addi $sp, $sp, -4
li $v0, 3
sw $v0, 0($sp)
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal sumTwo
addi $sp, $sp, -4
sw $t0, 0($sp)
#CallK Argument Computation
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
sw $v0, 0($sp)
#ConstK 7
addi $sp, $sp, -4
li $v0, 7
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal sumTwo
addi $sp, $sp, -4
sw $t0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal sumTwo
addi $sp, $sp, -4
sw $t0, 0($sp)
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
#ArrK arr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ArrK arr[]
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ArrK arr[]
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal sumThree
addi $sp, $sp, -4
sw $t0, 0($sp)
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
#IdK a
lw $v0, -8($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ArrK arr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ArrK arr[]
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ArrK arr[]
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -28
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal sumFour
addi $sp, $sp, -4
sw $t0, 0($sp)
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
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ExpK lefthand
#IdK globalA
addi $sp, $sp, -4
addi $v1, $zero, 1
sllv $v1, $v1, 28
addi $v0, $v1, 0
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#DeclareK INT
addi $sp, $sp, -4
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
sw $v0, 0($sp)
#ExpK lefthand
#IdK globalA
addi $sp, $sp, -4
addi $v0, $fp, -240
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#IdK globalA
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 0($v1)
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
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
#ExpK lefthand
#IdK globalA
addi $sp, $sp, -4
addi $v1, $zero, 1
sllv $v1, $v1, 28
addi $v0, $v1, 0
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#CallK Argument Computation
#IdK globalA
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 0($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal helloGlobal
#IdK globalA
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 0($v1)
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
#ArrK globalArr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
addi $v1, $zero, 1
sllv $v1, $v1, 28
add $v0, $v0, $v1
addi $v0, $v0, 4
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
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#DeclareK INTARR
addi $sp, $sp, -20
#CompoundK Statements
#ConstK 888888
addi $sp, $sp, -4
li $v0, 888888
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
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#ArrK arr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -264
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
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK lefthand
#ArrK arr[]
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -264
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
#ConstK 3
addi $sp, $sp, -4
li $v0, 3
sw $v0, 0($sp)
#ExpK lefthand
#ArrK arr[]
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -264
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
#ConstK 4
addi $sp, $sp, -4
li $v0, 4
sw $v0, 0($sp)
#ExpK lefthand
#ArrK arr[]
#ConstK 3
addi $sp, $sp, -4
li $v0, 3
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -264
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
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
sw $v0, 0($sp)
#ExpK lefthand
#ArrK arr[]
#ConstK 4
addi $sp, $sp, -4
li $v0, 4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -264
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
#CallK Argument Computation
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
sw $v0, 0($sp)
#IdK arr
addi $sp, $sp, -4
addi $v0, $fp, -264
sw $v0, 0($sp)
#ArrK arr[]
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
li $v1, 4
mul $v0, $v0, $v1
add $v0, $v0, $fp
addi $v0, $v0, -264
lw $v0, 0($v0)
addi $sp, $sp, -4
sw $v0, 0($sp)
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal polynomial
addi $sp, $sp, -4
sw $t0, 0($sp)
#ExpK lefthand
#IdK res
addi $sp, $sp, -4
addi $v0, $fp, -244
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#IdK res
lw $v0, -244($fp)
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
#IfK condition
#ExpK righthand
#ConstK 2
addi $sp, $sp, -4
li $v0, 2
sw $v0, 0($sp)
#ExpK lefthand
#IdK globalA
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 0($v1)
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
beq $v0, $zero, label4
#IfK then
#CompoundK Declarations
#CompoundK Statements
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
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
beq $zero, $zero, label5
label4:
#IfK else
#ConstK 99999999
addi $sp, $sp, -4
li $v0, 99999999
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
label5:
#IfK condition
#ExpK righthand
#ConstK 3
addi $sp, $sp, -4
li $v0, 3
sw $v0, 0($sp)
#ExpK lefthand
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
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
beq $v0, $zero, label6
#IfK then
#CompoundK Declarations
#CompoundK Statements
#ConstK 55
addi $sp, $sp, -4
li $v0, 55
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
label6:
#IfK condition
#ExpK righthand
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
sw $v0, 0($sp)
#ExpK lefthand
#ConstK 5
addi $sp, $sp, -4
li $v0, 5
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
beq $v0, $zero, label7
#IfK then
#CompoundK Declarations
#CompoundK Statements
#ConstK 555
addi $sp, $sp, -4
li $v0, 555
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
label7:
#IfK condition
#ExpK righthand
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK a
lw $v0, -8($fp)
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
#IdK a
lw $v0, -8($fp)
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
beq $v0, $zero, label8
#IfK then
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#ConstK 33
addi $sp, $sp, -4
li $v0, 33
sw $v0, 0($sp)
#ExpK lefthand
#IdK a
addi $sp, $sp, -4
addi $v0, $fp, -268
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#IdK a
lw $v0, -268($fp)
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
#IfK condition
#ExpK righthand
#ExpK righthand
#ConstK 4
addi $sp, $sp, -4
li $v0, 4
sw $v0, 0($sp)
#ExpK lefthand
#IdK a
lw $v0, -268($fp)
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
#IdK a
lw $v0, -268($fp)
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
beq $v0, $zero, label9
#IfK then
#CompoundK Declarations
#DeclareK INT
addi $sp, $sp, -4
#CompoundK Statements
#ExpK righthand
#IdK a
lw $v0, -268($fp)
addi $sp, $sp, -4
sw $v0, 0($sp)
#ExpK lefthand
#IdK c
addi $sp, $sp, -4
addi $v0, $fp, -272
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
#IdK c
lw $v0, -272($fp)
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
label10:
#WhileK condition
#ConstK 0
addi $sp, $sp, -4
li $v0, 0
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label11
#WhileK statement
beq $zero, $zero, label10
label11:
label9:
label8:
#ExpK righthand
#ConstK 3
addi $sp, $sp, -4
li $v0, 3
sw $v0, 0($sp)
#ExpK lefthand
#IdK globalA
addi $sp, $sp, -4
addi $v1, $zero, 1
sllv $v1, $v1, 28
addi $v0, $v1, 0
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
label12:
#WhileK condition
#IdK globalA
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 0($v1)
addi $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 0($sp)
addi $sp, $sp, 4
beq $v0, $zero, label13
#WhileK statement
#CompoundK Declarations
#CompoundK Statements
#CallK Argument Computation
#CallK Call Sequence
addi $sp, $sp, -4
sw $fp, 0($sp)
jal checkGlobalA
#ExpK righthand
#ExpK righthand
#ConstK 1
addi $sp, $sp, -4
li $v0, 1
sw $v0, 0($sp)
#ExpK lefthand
#IdK globalA
addi $v1, $zero, 1
sllv $v1, $v1, 28
lw $v0, 0($v1)
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
#IdK globalA
addi $sp, $sp, -4
addi $v1, $zero, 1
sllv $v1, $v1, 28
addi $v0, $v1, 0
sw $v0, 0($sp)
#ExpK operation
lw $v1, 4($sp)
lw $v0, 0($sp)
addi $sp, $sp, 8
#ExpK =
sw $v1, 0($v0)
addi $sp, $sp, -4
sw $v1, 0($sp)
beq $zero, $zero, label12
label13:
#FuncK Void Return
lw $ra, -4($fp)
addi $sp, $fp, 0
lw $fp, 0($sp)
addi $sp, $sp, -4
jr $ra
