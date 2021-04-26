#A + B + D - 5 + F = E
.text
.globl main
main: la $t0, a  #carrega endereço de memoria de a em t0
      lw $t1, 0($t0) #le valor de a para t1
      la $t2, b  # carrega endereço de b para t2
      lw $t3, 0($t2) #le valor de b para t3
      la $s4, d  # carrega endereço de d para s4
      lw $s7, 0($s4) #le valor de d para s4
      addiu $t4, $s7, -5  #soma o valor de d com -5 no endereço t4
      addu $t6, $t1, $t3 #add de a com b
      la $t7, f  #carrega o endereço de f para t7
      lw $t8, 0($t7) #carrega o valor de f para t8
      la $t9, e #carrega o endereço de e para t9
      addu $s1, $t4, $t6 #adiciona o valor de (d+(-5))  + (a+b) 
      addu $s2, $s1, $t8 #adiciona o valor de s1 + f

      sw $s2, 0($t9) #escreve no endereço t9 de memória o conteúdo do registrador s2

    li $v0, 10
    syscall

.data
a: .word 15
b: .word 2
d: .word 3
f: .word 4
e: .word 0
