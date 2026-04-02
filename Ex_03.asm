.data
frase1: .asciiz "Entre com um número inteiro: "
frase2: .asciiz "\n O número digitado foi: "

.text
li $v0, 4 # Chamando o serviço print_string
la $a0, frase1 # Imprime a frase 1
syscall

li $v0, 5 # Lê o número digitado
syscall

add $t1, $0, $v0 # Registra em $t1

li $v0, 4
la $a0, frase2
syscall

li $v0, 1 # Imprime o valor digitado
add $a0, $t1, $0 # Carrega o argumento
syscall