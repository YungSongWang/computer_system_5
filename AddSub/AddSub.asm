// Calculates R1 + R2 - R3 and stores the result in R0.
// (R0, R1, R2, R3 refer to RAM[0], RAM[1], RAM[2], and RAM[3], respectively.)

// Put your code here.

// Load a (R1) into D register
@R1
D=M

// Add b (R2) to D
@R2
D=D+M

// Subtract c (R3) from D
@R3
D=D-M

// Store the result in R0
@R0
M=D