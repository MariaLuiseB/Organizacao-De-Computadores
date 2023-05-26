#escolher a chamada apropriada(write)
# ID da syscall write: 64
li a7, 64
#argumentos da syscall write
li a0, 1
la a1, string
li a2, 10
#chamar a syscall write
ecall
li a7, 93 # 93 -> id da syscall exit | addi a7, zero, 93
li a0, 0 # argumento para exit, código de saída 0: exit(0)
ecall # exit(0)
string: .string "Olá Mundo\n"
