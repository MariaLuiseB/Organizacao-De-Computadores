jal x0, +20 -- adiciona 20 ao pc
sb x4, 0(x1) -- armazena o valor de x4 no endereço x1
lb x5, 0(x2) -- carrega o valor do endereço x2 em x5
sb x5, 0(x3) -- armazena o valor de x5 no endereço x3
mret -- retorna da interrupção
lui x1, 0xb0000 -- carrega o valor 0xb0000 em x1
addi x2, x1, 1 -- adiciona 1 ao valor de x1 e armazena em x2
addi x4, x0, 128 -- adiciona 128 ao valor de x0 e armazena em x4
sb x4, 0(x1) -- armazena o valor de x4 no endereço x1
lui x3, 0xc0000 -- carrega o valor 0xc0000 em x3
jal x0, 0 -- adiciona 0 ao pc
