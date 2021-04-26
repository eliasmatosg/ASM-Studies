#ADIÇÕES EM UM VETOR
.text
.globl main
main: 
	la $t0, vet
	
	lw $t1, 44($t0)

retorna:
	beq $t1, 11, end
	mul $t2, $t1, 4	#multiplica por 4 o valor de i para percorrer o vetor
	addu $t3, $t0, $t2 #adiciona o valor do t2, que contém quantos bytes o vetor deve andar para a próxima posição e o endereço de v
	lw $t4, 0($t3)	#carrega a palavra armazenada na posição [i]
	addiu $t4, $t4, 2 #adiciona 2 ao valor da posição [i]
	addiu $t1, $t1, 1 #adiciona +1 a i
	sw $t4, 0($t3)
	j retorna
	
end: 
	li $v0, 10
	syscall
				






 

.data
vet: .space 44
index: .word 0
