lui x2, 0xc0000
addi x6, x0, 32
lb x5, 0(x6)
beq x5, 0, +16
sb x5, 0(x2) 
addi x6, x6, 1
jal x0, -16
jal x0, 0