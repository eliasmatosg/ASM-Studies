#conta a ocorrência de quantos valores pares e ímpares existem em um vetor
.data

vetor: .word 1 2 3 4 5 6 7 11 9 10
contImpar: .word 0
contPar: .word 0
size: .word 10

stringPares: .asciiz "quantidade de numeros pares: "
stringImpares: .asciiz "quantidade de numeros impares: "
stringQuebraLinha: .asciiz "\n"


.text
.globl main
main:
	#pegar endereço do vetor
	la $t0, vetor
	la $t1, size
	lw $t1, 0($t1) # tamanho do vetor
	li $t2, 0 # valor do indice
	la $a0, contPar
	lw $a0, 0($a0)
	la $a1, contImpar
loop:	
	beqz $t1, conclusao
	mul $t3, $t2, 4
	addu $t9, $t0, $t3
	lw $t4, 0($t9)
	andi $t5, $t4, 1
	beqz $t5, contadorPar
continuacao:
	addiu $t2, $t2,  1
	addiu $t1, $t1, -1
	j loop
contadorPar:
	addiu, $a0, $a0, 1
	j continuacao
conclusao:
	subu $t8, $t2, $a0
	sw $t8, 0($a1)
	sw $a0, 4($a1)
end: li $v0, 10
	syscall




