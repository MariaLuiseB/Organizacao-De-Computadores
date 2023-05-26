.global _start
_start:

li a0, 7 # addi a0, zero, 7 - carrega o imediato 7 no reg. a0
jal add1

fim:
    li a0, 0
    li a7, 93
    ecall 

add1:
    # salvar ra
    addi sp, sp, -4 # aponta p/ o topo da pilha
    sw ra, 0(sp) # guardando na pilha o end de ra, ou seja, guarda p/ onde tem que voltar depois que for pro add2
    li a1, 3
    jal add2
    #quando terminar add2 retorna para cá
    lw ra, 0(sp) # restaura o ra 
    addi sp, sp, 4 # volta apontando p/ o ultimo elemento da pilha 
    ret  # jal zero, ra

add2:
    add a0, a0, a1
    ret 

