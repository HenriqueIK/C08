#Faça um programa que receba um número R, 
#em reais, e calcule a quantidade mínima 
#de notas necessárias para dar a quantia. 
#Notas disponíveis: 100, 50, 10 e 1

.data
f1: .asciiz "Entre com o valor: "
f2: .asciiz "\n R$100 = "
f3: .asciiz "\n R$50 = "
f4: .asciiz "\n R$10 = "
f5: .asciiz "\n R$1 = "

.text
li $v0,4
la $a0,f1
syscall

li $v0,5
syscall

add $t1,$0,$v0

div $s0,$t1,100  #s0 = notas de 100
mfhi $t2

div $s1,$t2,50   #s1 = notas de 50
mfhi $t2

div $s2,$t2,10   #s2 = notas de 10
mfhi $s3         #s3 = notas de 1   

li $v0,4
la $a0,f2
syscall
add $a0,$s0,$0
li $v0,1
syscall

li $v0,4
la $a0,f3
syscall
add $a0,$s1,$0
li $v0,1
syscall

li $v0,4
la $a0,f4
syscall
add $a0,$s2,$0
li $v0,1
syscall

li $v0,4
la $a0,f5
syscall
add $a0,$s3,$0
li $v0,1
syscall