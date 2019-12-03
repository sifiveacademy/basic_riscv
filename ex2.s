.data
source:
    .word   3
    .word   2
    .word   5
    .word   6
    .word   4
    .word   1
    .word   20
destination:
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0

.text
main:
    addi t0, x0, 0
    la s1, source
    la s2, dest
loop:
    slli t1, t0, 2
    slli t2, t0, 3
    add t3, s1, t1
    lw t4, 0(t3)
    beq t4, x0, exit
    add t5, t4, t4
    add t6, s2, t2
    sw t5, 0(t6)
    addi t0, t0, 1
    jal x0, loop
exit:
    addi a0, x0, 10
    add a1, x0, x0
    ecall # Terminate ecall