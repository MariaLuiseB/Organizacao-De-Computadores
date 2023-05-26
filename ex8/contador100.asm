addi x2, x0, 100        # delimitador de 100
addi x1, x1, 1          # contador 
add x3, x3, x1          # soma o valor registrado + contador 
bne x3, x1, -8          # verifica se o contador != delimitador 
jal x0, 0 