.org 0x000
LOAD MQ, M(entrada)
MUL M(gravidade)
LOAD MQ
STOR M(aux)
LOAD MQ, M(aux)
LOAD MQ
DIV M(div)
LOAD MQ
STOR M(somatorio)
laco:       
    LOAD MQ,M(aux)
    LOAD MQ            
    DIV M(somatorio)
    LOAD MQ            
    ADD M(somatorio)
    DIV M(div)         
    LOAD MQ
    STOR M(somatorio)        
    LOAD MQ,M(gravidade)
    LOAD MQ            
    SUB M(sub)
    STOR M(gravidade)        
    JUMP+ M(laco)
    LOAD MQ,M(somatorio)     
    LOAD MQ
    JUMP M(fim, 20:39)
.org 0x0FF
somatorio: .word 0x0000000000

.org 0x101
gravidade: .word 0x000000000A
aux: .word 0x0000000000
div: .word 0x0000000002
sub: .word 0x0000000001
entrada:
.org 0x400
fim: