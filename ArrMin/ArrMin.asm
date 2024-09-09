// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


    // Initialize R0 with the first element of the array
    @R1
    A=M
    D=M
    @R0
    M=D

    // Initialize loop counter
    @i
    M=1

(LOOP)
    // Check if we've reached the end of the array
    @i
    D=M
    @R2
    D=D-M
    @END
    D;JGE

    // Load the next array element
    @R1
    D=M
    @i
    A=D+M
    D=M

    // Compare with current minimum
    @R0
    D=D-M
    @SKIP
    D;JGE

    // Update minimum if smaller
    @R1
    D=M
    @i
    A=D+M
    D=M
    @R0
    M=D

(SKIP)
    // Increment loop counter
    @i
    M=M+1

    // Continue loop
    @LOOP
    0;JMP

(END)
    @END
    0;JMP