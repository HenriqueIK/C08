# Fazer um programa que leia uma sequencia de numeros, e retorne a soma dos numeros da sequencia maiores que 10"

.data
f1: .asciiz "Digite uma sequência de números (Digite 0 para encerrar): "
f2: .asciiz "Soma = "

.text
main:
	li $v0,4
	la $a0,f1
	syscall
	
	li $v0,5
	syscall

	move $t0,$v0
	
	beq $t0, $zero, fim # Quando um numero da sequencia fot igual a zero, pula pro resultado
	
	slti $t1, $t0, 11 # verificando se o numero for menor que 11
	
  	bne $t1, $zero, main # se for menor ou igual a 10, volta ao começo da main

    	add $t2, $t2, $t0     # soma += numero
    	
    	j main

fim:
	li $v0,4
	la $a0,f2
	syscall
	
	move $a0,$t2
	li $v0,1
	syscall