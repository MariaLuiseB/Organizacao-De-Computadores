.global _start
#void one(int *c, int n)

one:
    li t1, 1
    laco:
    beq a1, zero, fim_vetor # vetor tem 0? vai p/ fim_vetor
    sw t1, 0(a0) # senão coloca no primeiro elemento do vetor 
    addi a0,a0, 4
    addi a1, a1, -1
    j laco # j → jal, zero, laco (nao altera o ra), enquanto que jal, ra, laco (altera o ra) 

fim_vetor:
    ret # jal, zero, ra 

main:
    add sp, sp, -16 # espaco para alocar o vetor v[3] e o ra da funcao one 
    mv a0, sp # a0 -> endereco do 1º elemento do vetor 
    li a1, 3 # a1 contém o tamanho do vetor 
    sw ra, 12(sp) # sp + 12, salva o ra na pilha depois do vetor
    jal one # jal ra, one
    lw ra, 12(sp) # restaura ra
    addi sp, sp, 16 # 
_start:
    jal main # jal ra, main 
    li a0, 0
fim:
    li a7, 93
    ecall 
