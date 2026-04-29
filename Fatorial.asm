.data
f1: .asciiz "Digite um número inteiro e positivo: "
f2: .asciiz "Fatorial = "

.text
li $v0, 4
la $a0, f1
syscall

li $v0, 5
syscall

add $t1, $0, $v0 # A

li $t0, 0 # i = 0

fatorial:
addi $t0, $t0, 1

fim: