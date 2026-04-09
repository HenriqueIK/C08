# Faça um programa em Assembly Mips que leia um número inteiro e positivo e mostre se o mesmo for PAR ou Ímpar

.data
f1: .asciiz "Digite um número inteiro e positivo: "
f2: .asciiz "O número é par"
f3: .asciiz "O número é ímpar"

.text
li $v0, 4
la $a0, f1
syscall

li $v0, 5
syscall

add $t1, $0, $v0

div $t2, $t1, 2
mfhi $t3 # resto da divisão fica no high

beqz $t3, par
     li $v0, 4
     la $a0, f3
     syscall
     
j fim

par:
li $v0, 4
la $a0, f2
syscall

fim: