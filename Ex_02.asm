# x = 10
# y = 20
# i = 0
# if (x > y)
#	i++
# else
#	i--

.text
li $t1, 0x10 # x = 10

li $t2, 0x20 # y = 20

li $t3, 0 # i = 0

bgt $t1, $t2, maior

addi $t3, $t3, -1 # decrementando $t3

j fim # jump

maior: addi, $t3, $t3, 1 # definindo o que a label maior faz

fim: