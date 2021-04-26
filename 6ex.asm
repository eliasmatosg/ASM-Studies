#Faz a soma dos elementos de dois vetores em um teceiro vetor
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
	jal soma_vet
	sw $v0, 0($t5)
	addiu $t0, $t0, 1
	addiu $t1, $t1, 4
	addiu $t2, $t2, 4	
	addiu $t5, $t5, 4
	j loop
soma_vet: 
	lw $a0, 0($t1)
	lw $a1, 0($t2)		
        addu $v0, $a1, $a0	  
	jr $ra
fim:  li $v0, 10
      syscall
