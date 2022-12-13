.text 
main:
	#Lê e imprime o nome dos integrantes do grupo
	#Lê e imprime a matrícula dos integrantes do grupo
	#Lê os valores das variáveis independentes e dos seus coeficientes para o cálculo da equação
	jal leVariaveis
	#Calcula e imprime o resultado da equação f(x,y,z) = 11ax^3 - 3by^2 + 7cz^3 - 2dz^2 a partir dos valores lidos
	#Encerra o programa
	li $v0, 10
	syscall 
#Inclui o arquivo com as subrotinas	
.data
msg0: .asciiz "Digite o valor de x: "
msg1: .asciiz "Agora digite o valor de y :"
msg2: .asciiz "Agora digite o valor de z: "
msg3: .asciiz "Agora digite o valor de a: "
msg4: .asciiz "Agora digite o valor de b: "
msg5: .asciiz "Agora digite o valor de c: "
msg6: .asciiz "Por fim, digite o valor de d: "
#Subrotinas utilizadas no main
.text
leVariaveis:
	move $t0, $ra
	#Pergunta o valor de x
	la $a0, msg0
	jal imprimeString
	jal leInteiro
	move $s0,$v0
	#Pergunta o valor de y
	la $a0, msg1
	jal imprimeString
	jal leInteiro
	move $s1,$v0
	#Pergunta o valor de z
	la $a0, msg2
	jal imprimeString
	jal leInteiro
	move $s2,$v0
	#Pergunta o valor de a
	la $a0, msg3
	jal imprimeString
	jal leInteiro
	move $s3,$v0
	#Pergunta o valor de b
	la $a0, msg4
	jal imprimeString
	jal leInteiro
	move $s4,$v0
	#Pergunta o valor de c
	la $a0, msg5
	jal imprimeString
	jal leInteiro
	move $s5,$v0
	#Pergunta o valor de d
	la $a0, msg6
	jal imprimeString
	jal leInteiro
	move $s6,$v0
	#Volta para o main
	move $ra, $t0
	jr $ra
.include "subrotinas.asm"