# Exercício: faça um código que leia dois numeros e retorne o numero maior

.data
f1: .asciiz "Entre com o primeiro número: "
f2: .asciiz "\n Entre com o segundo número: "
f3: .asciiz "\n O número maior é: "

.text
li $v0, 4 # Chamando o serviço print_string
la $a0, f1 # Imprime a frase 1
syscall

li $v0, 5 # Lê o número digitado
syscall

add $t1, $0, $v0 # Registra em $t1

li $v0, 4
la $a0, f2
syscall

li $v0, 5 # Lê o segundo número digitado
syscall

add $t2, $0, $v0 # Registra em $t2

bgt $t1, $t2, maior # Se $t1 for maior

add $t3, $zero, $t2 # Se não for, $t2 é maior
j imprimir

maior:
add $t3, $zero, $t1

imprimir:
li $v0, 4
la $a0, f3
syscall

# Imprime o número maior
li $v0, 1
add $a0, $zero, $t3
syscall

li $v0, 10
syscall