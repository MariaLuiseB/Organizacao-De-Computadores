.section .data 
msg: .string "ROMA\n" # N a memória teremos: ROMA\n 0
fim_msg: # rótulo que marca o fim da string
.section .text
.global _start
_start:
 li a0, 1 # saida padrão
 la a1, msg # endereço da string a ser impresso
 la t0, msg
 la t1, fim_msg
 sub a2, t1, t0
 li a7, 64 # id da função write
 ecall  
exit:
 li a0, 0
 li a7, 93
 ecall 
#Ex: para ROMA\n, fim_msg = 0x300 + 5 = 0x305
