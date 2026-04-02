# Ler 4 numeros (A, B, C ,D) e executar: X = (A - B) + (C - D)

.data
f1: .asciiz "Entre com o valor de A: "
f2: .asciiz "\n Entre com o valor de B: "
f3: .asciiz "\n Entre com o valor de C: "
f4: .asciiz "\n Entre com o valor de D: "
f5: .asciiz "\n X =  "

.text
li $v0, 4 # A
la $a0, f1
syscall

li $v0, 5
syscall

add $t1, $0, $v0

li $v0, 4 # B
la $a0, f2
syscall

li $v0, 5
syscall

add $t2, $0, $v0

li $v0, 4 # C
la $a0, f3
syscall

li $v0, 5
syscall

add $t3, $0, $v0

li $v0, 4 # D
la $a0, f4
syscall

li $v0, 5
syscall

add $t4, $0, $v0

sub $t5, $t1, $t2 # (A - B)

sub $t6, $t3, $t4  # (C - D)

add $t7, $t5, $t6 # $t6 + $t5

li $v0, 4 # X
la $a0, f5
syscall

li $v0, 1
add $a0, $zero, $t7
syscall

li $v0, 10
syscall