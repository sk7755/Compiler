getIdx:
addi $sp, $sp, -4
addi $sp, $fp, -8
addi $sp, $sp, -4
li $sp, 44
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
func:
addi $sp, $sp, -4
addi $sp, $fp, -408
addi $sp, $sp, -4
li $sp, 1
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
addi $sp, $sp, -4
addi $sp, $fp, -412
addi $sp, $sp, -4
li $sp, 2
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $sp, $sp, -4
li $sp, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sle $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label0
addi $sp, $sp, -4
addi $sp, $fp, -420
lw v0, 8($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
li $v1, 4
mul, $v0, $v1
add, $v0, $v0, $fp
addi, $v0, $v0, 4
lw $v0, $v0
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
addi $sp, $sp, -4
addi $sp, $fp, -408
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -420($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
mul $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
label1:
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sne $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label2
addi $sp, $sp, -4
addi $sp, $fp, -424
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
div $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
beq $zero, $zero, label1
label2:
addi $sp, $sp, -4
addi $sp, $fp, -408
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -420($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
mul $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
label3:
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sne $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label4
addi $sp, $sp, -4
addi $sp, $fp, -424
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
div $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
beq $zero, $zero, label3
label4:
label5:
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sne $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label6
addi $sp, $sp, -4
addi $sp, $fp, -424
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
div $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
beq $zero, $zero, label5
label6:
label0:
addi $sp, $sp, -4
addi $sp, $fp, -412
addi $sp, $sp, -4
li $sp, 2
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $sp, $sp, -4
li $sp, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sle $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label7
addi $sp, $sp, -4
addi $sp, $fp, -420
lw v0, 8($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
li $v1, 4
mul, $v0, $v1
add, $v0, $v0, $fp
addi, $v0, $v0, 4
lw $v0, $v0
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
addi $sp, $sp, -4
addi $sp, $fp, -408
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -420($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
mul $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
label8:
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sne $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label9
addi $sp, $sp, -4
addi $sp, $fp, -424
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
div $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
beq $zero, $zero, label8
label9:
addi $sp, $sp, -4
addi $sp, $fp, -408
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -420($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
mul $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
label10:
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sne $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label11
addi $sp, $sp, -4
addi $sp, $fp, -424
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
div $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
beq $zero, $zero, label10
label11:
label12:
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sne $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label13
addi $sp, $sp, -4
addi $sp, $fp, -424
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
div $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
beq $zero, $zero, label12
label13:
label7:
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $sp, $sp, -4
li $sp, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sle $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label14
addi $sp, $sp, -4
addi $sp, $fp, -420
lw v0, 8($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
li $v1, 4
mul, $v0, $v1
add, $v0, $v0, $fp
addi, $v0, $v0, 4
lw $v0, $v0
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
addi $sp, $sp, -4
addi $sp, $fp, -408
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -420($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
mul $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
label15:
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sne $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label16
addi $sp, $sp, -4
addi $sp, $fp, -424
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
div $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
beq $zero, $zero, label15
label16:
addi $sp, $sp, -4
addi $sp, $fp, -408
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -420($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
mul $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
label17:
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sne $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label18
addi $sp, $sp, -4
addi $sp, $fp, -424
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
div $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
beq $zero, $zero, label17
label18:
label19:
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sne $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v0, $sp, 0
addi $sp, $sp, 4
beq $v0, $zero, label20
addi $sp, $sp, -4
addi $sp, $fp, -424
lw v0, -408($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
lw v0, -412($fp)
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
div $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
add $v0, $v0, $v1
addi $sp, $sp, -4
addi $sp, $v0, 0
addi $v1, $sp, 0
addi $v0, $sp, 4
addi $sp, $sp, 8
sw $v1, $v0
addi $sp, $sp, -4
addi $sp, $v1, 0
beq $zero, $zero, label19
label20:
label14:
main:
