la t0, numero # t0 guarda o rótulo número 
lw t1, 0(t0)
addi t1, t1, 1
sw t1,0(t0)
#invocar a chamada de sistema exit(0)
li a7, 93 # 93 -> id da syscall exit | addi a7, zero, 93
li a0, 0 # argumento para exit, código de saída 0: exit(0)
ecall
numero: .word 33 #instrui o montador a colocar o valor 33 na memória
