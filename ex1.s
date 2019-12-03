.data
modulus: .word 4
number: .word 15

.text
main:   add     t0, x0, x0
        la      t2, number
        lw      t2, 0(t2)
        la      t3, modulus
        lw      t3, 0(t3)
        sub     t1, x0, t3
mod:    blt     t2, t3, finish
        add     t0, t2, t1
        mv      t2, t0
        j       mod  
finish: addi    a0, x0, 2
		addi    a1, t2, 0
        ecall # print integer ecall
        addi    a0, x0, 10
        ecall # terminate ecall