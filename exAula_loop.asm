.text
.globl main
main:
	la $t0, vetor
	li $t1, 0
	la $t5, valor
	lw $t5, 0($t5)
loopImprime:
	beq $t1, 11, ronaldo
	mul $t2, $t1, 4
	addu $t3, $t2, $t0
	lw $t4, 0($t3)
	move $a0, $t4
	li $v0, 1
	syscall
	la $a0, espaco
	li $v0, 4
	syscall
	addiu $t1, $t1, 1 
	j loopImprime
ronaldo:
	li $t1,0
	la $a0, quebraLinha
	li $v0, 4
	syscall
loop:	
	beq $t1, 11, end
	mul $t2, $t1, 4
	addu $t3, $t2, $t0
	lw $t4, 0($t3)
	addu $t4, $t4, $t5
	sw $t4, 0($t3)
	move $a0, $t4
	li $v0, 1
	syscall
	la $a0, espaco
	li $v0, 4
	syscall
	addiu $t1, $t1, 1 
	j loop
end: li $v0, 10
	syscall
.data
valor: .word 10
vetor: .word 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xA
espaco: .asciiz " "
quebraLinha: .asciiz "\n"
