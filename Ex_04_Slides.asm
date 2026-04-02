# Ler 3 números e retornar a média aritmética

.data
f1: .asciiz "Entre com o primero número: "
f2: .asciiz "\n Entre com o segundo número: "
f3: .asciiz "\n Entre com o terceiro número: "
f4: .asciiz "\n Média = "

.text
li $v0, 4 # Numero 1
la $a0, f1
syscall

li $v0, 5
syscall

add $t1, $0, $v0

li $v0, 4 # Numero 2
la $a0, f2
syscall

li $v0, 5
syscall

add $t2, $0, $v0

li $v0, 4 # Numero 3
la $a0, f3
syscall

li $v0, 5
syscall

add $t3, $0, $v0

add $t4, $t1, $t2

add $t5, $t4, $t3

li $t6, 3

div $t5, $t6
mflo $t7

li $v0, 4 # Chamando a frase 4
la $a0, f4
syscall

li $v0, 1 # Imprimindo a média
add $a0, $zero, $t7
syscall

li $v0, 10
syscall