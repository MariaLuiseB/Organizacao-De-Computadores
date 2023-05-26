// 1° carregar NUM da memória para o REG (X1)
// 2º verififcar se x1 = 2
// 3º x1 = 1 ou x2 = 2

lw x1, 28(x0) # carrega 0 no reg x1 
addi x3, x0, 5 # x3 = x0 + 5 adiciona 5 no registrador x3 
beq x1, x3, 12 # if x1 = x3 e pula pro addi que adiciona 1 no reg x2
addi x2, x0, 2 # else x2 = x0 + 2 adiciona 2 no reg x2
jal x0, 0  # para programa
addi x2, x0, 1 # adiciona 1 no reg x2
jal x0, 0 # para programa

