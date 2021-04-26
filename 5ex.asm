#Faz a intersecção de dois vetores
.data
v1: .word 1 3 6 8 12 57 23
v2: .word 4 2 6 3 1 23 57 
size1: .word 7
size2: .word 7
v3: .word 0

.text
.globl main
main: la $t0, v1
      la $t2, v3
      li $t5, 0
loop:      beq $t5, 7, fim
           lw $a0, 0($t0)
           li $t6, 0
           la $t1, v2
           addiu $t0, $t0, 4
           addiu $t5, $t5, 1
loop2:     beq $t6, 7, loop
           lw $a1, 0($t1)
           beq $a0, $a1, addv3
loop2cont:  addiu $t6, $t6, 1
            addiu $t1, $t1, 4
            j loop2
addv3:      sw, $a0, 0($t2)
	    addiu $t2, $t2, 4
            j loop2cont
fim:        li $v0, 10
	    syscall
