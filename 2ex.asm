#implemente um programa em lingaugem asm do mips que realiza a adição de dois numeros inteiros quaisquer
#o programa dele ler do teclado os valores a serem adicionados

#exemplo de es
#digite o primeiro numero
#digite o segundo numero

#a soma de ???? mais ??? é igual a ????.
#syscall e asciiz

.text
.globl main
main:
    li $v0, 4
    la $a0, str1
    syscall
    
    la $t0, a
    li $v0, 5
    syscall
    sw $v0, a
        
    li $v0, 4
    la $a0, str2
    syscall    
    
    la $t1, b
    li $v0, 5
    syscall
    sw $v0, b
    
    lw $t2, 0($t0)
    lw $t3, 0($t1)
    
    addu $t4, $t2, $t3
    
    la $t5, c
    sw $t4, 0($t5)
    
    li $v0, 4
    la $a0, str3
    syscall
    
    li $v0, 1
    move $a0, $t2
    syscall
    
    li $v0, 4
    la $a0, str4
    syscall
    
    li $v0, 1
    move $a0, $t3
    syscall
    
    li $v0, 4
    la $a0, str5
    syscall
    
    li $v0, 1
    lw $a0, 0($t5)
    syscall
            
    li $v0, 10
    syscall


.data
a: .word 0
b: .word 0
c: .word 0
str1: .asciiz "Digite o primeiro número da soma: "
str2: .asciiz "Digite o segundo número da soma: "
str3: .asciiz "A soma de " 
str4: .asciiz " com "
str5: .asciiz " é igual a: "
