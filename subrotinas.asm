# Subsrotinas 
# implementação das subrotinas para le e imprimir strings e inteiros
# Autores: Caio Vitor Souza Fernandes, Lucas Ferreira Guedes, Roberto Eller Paiva e Thais Alves Silva
# Data: 08/12/2022
# Versão 1.0 – Versão inicial

.text
#rotina para ler uma string digitada pelo usuário 
leString:
	li $v0, 8		#código 8: operação de leitura de strings 
	syscall
	jr $ra
	
#rotina para imprimir uma string para o usuário
imprimeString: 
	addi $v0, $zero, 4 	# código 4: operação de escrita de strings 
	syscall
	jr $ra
	
#rotina para ler um inteiro informado pelo usuário
leInteiro:
	li $v0, 5		# código 5: operação de leitura de inteiros
	syscall
	jr $ra
	
#rotina para imprimir um inteiro para o usuário	
imprimeInteiro:
	li $v0, 1 		# código 1: operação de escrita de inteiros
	syscall
	jr $ra
