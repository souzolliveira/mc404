.org 0x000
laco:
    LOAD MQ, M(base1)
    LOAD MQ
    STA M(carregaVetor1, 8:19)
    LOAD MQ, M(base2)
    LOAD MQ
    STA M(carregaVetor2, 28:39)
    carregaVetor1: LOAD MQ, M(000)
    carregaVetor2: MUL M(000)
    LOAD MQ
    ADD M(soma)
    STOR M(soma)
    LOAD MQ, M(count)
    LOAD MQ
    ADD M(sub)
    STOR M(count)
    LOAD MQ, M(base1)
    LOAD MQ
    ADD M(sub)
    STOR M(base1)
    LOAD MQ, M(base2)
    LOAD MQ
    ADD M(sub)
    STOR M(base2)
    LOAD MQ, M(tamanho)
    LOAD MQ
    SUB M(count)
    JUMP+ M(laco)
LOAD MQ, M(soma)
LOAD MQ
JUMP M(fim, 20:39)
.org 0x0C8
sub: .word 0000000001
count: .word 0000000001
soma: .word 0000000000
vetor:

.org 0x3FD
base1:
.org 0x3FE
base2:
.org 0x3FF
tamanho:

.org 0x400 
fim:
