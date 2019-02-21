// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// load r1
// create variable for count
// loop while count < r1
// if r0 is 0, store r2=0 and exit
// if r1 is 0, store r2=0 and exit
// 
// load r0
// compute r0 + 

@sum
M=0

@i
M=0

(LOOP)
    @i
    D=M

    @R1
    D=D-M

    @DONE
    D;JGE

    @R0
    D=M

    @sum
    M=M+D

    @i
    M=M+1

    @LOOP
    0;JMP

(DONE)
    @sum
    D=M

    @R2
    M=D

(END)
    @END
    0;JMP