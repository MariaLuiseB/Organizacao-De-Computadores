.global _start
_start:
    li a0, 7
    li a1, -3
    jal soma_abs   
fim:
    li a0, 0
    li a7, 93
    ecall 

soma_abs:
    #salvar ra
    addi sp, sp, -4 # aponta p/ o topo da pilha
    sw ra, 0(sp) # guarda o end de ra em sp

    jal abs # a0 = 7

    mv s0, a0 # guarda s0 <-- 7 p/ não perder 

    mv a0, a1 # move a0 <-- a1 # pega o 2º parametro e coloca em a0

    jal abs # a0 = 3 

    add a0, a0, s0  # a0 = a0 + s0 SOMA!

    #restaurar ra
    lw ra, 0(sp)
    addi sp, sp, 4 
    ret 

abs:
    blt a0, zero, negativo # se a0 < 0 salta para negativo
    ret # senão só retorna o numero 


negativo:
    sub a0, zero, a0 # subtrai o numero por ele mesmo  
    ret  # retorna positivo
    
