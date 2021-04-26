#Faz a soma dos elementos de dois vetores em um terceiro, trabalho o uso de pilha
.data
v1: .word 2 5 8 12 5 
v2: .word 13 2 4 7 51
v3: .word 

.text
.globl main
main: la $t1, v1
      la $t2, v2
      la $t5, v3
      li $t0, 0      
loop:   beq $t0, 5, fim
        addiu $sp, $sp, -8
        sw $t1, 0($sp)
        sw $t2, 4($sp)
	jal soma_vet
	lw $t6, 0($sp)
	sw $t6, 0($t5)
	addiu $sp, $sp, 4
	addiu $t0, $t0, 1
	addiu $t1, $t1, 4
	addiu $t2, $t2, 4	
	addiu $t5, $t5, 4
	j loop
soma_vet:         
	lw $a0, 0($sp)
	lw $a1, 4($sp)
	addiu $sp, $sp, 8		
	lw $a0, 0($a0)
	lw $a1, 0($a1)        
	addu $t7, $a0, $a1	  
        addiu $sp, $sp, -4
        sw $t7, 0($sp)
	jr $ra
fim:  li $v0, 10
      syscall
