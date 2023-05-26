numero: .word 5
.global add5 
add5: # rótulo para utilizar ele a hora que quiser
    lw t0, numero
    add a0, a0, t0
    jalr zero, 0(ra)
    