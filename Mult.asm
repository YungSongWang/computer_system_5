// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


    // Initialize R0 to 0
    @R0
    M=0

    // Load R1 into D
    @R1
    D=M

    // If R1 is 0, jump to END
    @END
    D;JEQ

    // Load R2 into D
    @R2
    D=M

    // If R2 is 0, jump to END
    @END
    D;JEQ

    // Initialize loop counter
    @i
    M=0

(LOOP)
    // Check if i == R2
    @i
    D=M
    @R2
    D=D-M
    @END
    D;JEQ

    // Add R1 to R0
    @R1
    D=M
    @R0
    M=M+D

    // Increment i
    @i
    M=M+1

    // Jump back to LOOP
    @LOOP
    0;JMP

(END)
    @END
    0;JMP