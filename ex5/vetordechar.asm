addi x3, x0, 40     # x3 <- 10
addi x1, x0, 3      # x <- 3
lb x2, 0(x3)        # x2 <- mem[40]
addi x1, x1, -1     # decrementa x1
add x8, x8, x2      # adiciona x8 + x2
addi x3, x3, 1      #
bne x1, x0, -16
jal x0, 0
