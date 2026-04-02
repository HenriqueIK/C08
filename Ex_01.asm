# k = 1;

# for (i = 1; i < 4; i++){
# 	k = k + 1;
# }

.text
li $t1, 1 # i
li $t2, 1 # k

volta:
blt $t2, 4, continua

j sai_do_for

continua: addi $t2, $t2, 1
	  addi $t1, $t1, 1
	  j volta
sai_do_for: