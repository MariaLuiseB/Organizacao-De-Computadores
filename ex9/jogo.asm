// x1 <- 0xc00
addi x1, x0, 0x7FF #x1 <- primeira posição de pixel x1 = x0 + 0x7ff
addi x1, x1, 1025 #  x1= x1 + 1025
//armazenar a posilão atual da cabeça da minhoca, ou seja, 
// quero achar o endereço equivalente e pintar de vermelho
addi x2, x1, 48 // 2° linha na metade, e como 1 linha = 32 bits, faremos a soma 32 + 16 = 48
addi x3, x0, 0xe0 // guardando a cor vermelha E0 = 11100000 = vermelho


lui x10, 0xb00000 // o usuario digitou alguma tecla? está em modo de digitação?
addi x11, x10, 1 // saber qual tecla o usuário apertou

//REGISTRANDO AS TECLAS WASD para mover a cabeça da minhoca
addi x20, x0, 0x77 // W 
addi x21, x0, 0x61 //A
addi x22, x0, 0x73 // S
addi x23. x0, 0x64 //D 
addi x24, x0, 0 // score do jogo 
// ----------------------------------JOGO COMEÇOU! laço do jogo ----------------------------------
sb x3, 0(x2) // posição inicial do player colocada, x3 possui a cor E PINTA A COR
lb x12, 0(x10) // guarda o valor de x10 em x12 
beq x12, x0, -4 // volta para verificar qual valor está em x10 
sb x0, 0(x10) //zerou o x10 
lb x12, 0(x11) // leu a tecla digitada 
//VERIFICANDO A MINHOCA COMECOU A ANDAR E PARA QUAL LADO ELA VAI 
beq x12, x21, +20
beq x12, x23, +28
beq x12, x20, +36
beq x12, x22, +44
jal x0, -32
addi x2, x2, -1 // joga o player para a ESQUERDA
sb x3, 0(x2) // pega o novo endereço a esquerda e pinta de vermelho com o reguistrador x3
jal x0, -44

addi x2, x2, +1 // joga o player para a DIREITA
sb x3, 0(x2) //  pega o novo endereço a esquerda e pinta de vermelho com o reguistrador x3
jal x0, -56

addi x2, x2, -32 // joga o player para CIMA
sb x3, 0(x2) //  pega o novo endereço a esquerda e pinta de vermelho com o reguistrador x3
jal x0,-68

addi x2, x2, +32 // joga o player para BAIXO
sb x3, 0(x2) //  pega o novo endereço a esquerda e pinta de vermelho com o reguistrador x3
jal x0,-80





