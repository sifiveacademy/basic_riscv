.globl sum_squares

.data
n: .word 4

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, sum_squares

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

sum_squares:
    # YOUR CODE HERE
