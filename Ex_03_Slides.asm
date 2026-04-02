# Exercicio, digite um numero e retorna seu valor fatorial

.data
f1: .asciiz "Digite um número inteiro e positivo: "
f2: .asciiz "\n Fatorial = "

.text
li $v0, 4
la $a0, f1
syscall

li $v0, 5
syscall
add $t0, $zero, $v0

li $t1, 1

blez $t0, imprimir # if (n < 0): sair

loop: # While (n > 1)
ble $t0, 1, imprimir

mul $t1, $t1, $t0 # fatorial = fatorial * n

addi $t0, $t0, -1 # decrementando -1

j loop

imprimir:
li $v0, 4
la $a0, f2
syscall

li $v0, 1
add $a0, $zero, $t1
syscall

li $v0, 10
syscall