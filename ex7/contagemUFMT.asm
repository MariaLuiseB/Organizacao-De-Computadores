      # x2 <- endereço base (30)
lb x3, 0(x2)        # x3 <- mem[48] (x2)
addi x1, x1, 1      # adiciona 1 no contador 
addi x2, x2, 1      # passa para o próximo caractere 
bne x3, x0, -12    # pula se for diferente de 0 
jal x0, 0


