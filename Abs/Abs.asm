// Calculates the absolute value of R1 and stores the result in R0.
// (R0, R1 refer to RAM[0], and RAM[1], respectively.)

// Put your code here.

@R1
D=M

// If D >= 0, jump to POSITIVE
@POSITIVE
D;JGE

// If negative, negate D
D=-D

(POSITIVE)
// Store the result in R0
@R0
M=D

// End of program
(END)
@END
0;JMP