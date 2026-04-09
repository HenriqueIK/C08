# Programa que le cinco numeros e retorna o numero maior

.data
f1: .asciiz "Número 1: "
f2: .asciiz "Número 2: "
f3: .asciiz "Número 3: "
f4: .asciiz "Número 4: "
f5: .asciiz "Número 5: "
f6: .asciiz "Maior = "

.text
la $a0,f1
jal imprime
jal le_valor
add $t1,$0,$v0

la $a0,f2
jal imprime
jal le_valor
add $t2,$0,$v0

bgt $t1,$t2,t1_maior
add $s0,$t2,$0
j proximo
t1_maior:
add $s0,$t1,$0
proximo:

la $a0,f3
jal imprime
jal le_valor
add $t3,$0,$v0

bgt $t3,$s0,t3_maior
j seguinte
t3_maior:
add $s0,$t3,$0
seguinte:

la $a0,f4
jal imprime
jal le_valor
add $t4,$0,$v0

bgt $t4,$s0,t4_maior
j outro
t4_maior:
add $s0,$t4,$0

outro:
la $a0,f5
jal imprime
jal le_valor
add $t5,$0,$v0

bgt $t5,$s0,t5_maior
j outro1
t5_maior:
add $s0,$t5,$0

outro1:
la $a0,f6
jal imprime
add $a0,$s0,$0
li $v0,1
syscall
j fim
imprime: li $v0,4
         syscall
         jr $ra
le_valor: li $v0,5
          syscall
          jr $ra
fim: