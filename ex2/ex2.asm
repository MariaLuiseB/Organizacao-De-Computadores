// verifique se o num armazenado na posição 64 
// é menor que o num armazenado na posição 68, se sim x2 <- 1

lw x1, 64(x0) 
lw x3, 68(x0) 
addi x1, x0, 2 
addi x3, x0, 4 
blt x1, x3, 8 
jal x0, 0 
addi x2, x0, 1  
jal x0, 0

