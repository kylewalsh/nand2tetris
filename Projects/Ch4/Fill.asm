// Fill

@SCREEN
D=A

@addr
M=D

@8192
D=D+A

@max
M=D

@color
M=0

(LOOP)
    @addr
    D=M

    @max
    D=M-D

    @RESET
    D;JLT

    @KBD
    D=M

    @DOWN
    D;JGT

    @UP
    D;JEQ

(DRAW)
    @color
    D=M

    @addr 
    A=M
    M=D

    @addr
    M=M+1

    @LOOP
    0;JMP

(RESET)
    @SCREEN
    D=A

    @addr
    M=D

    @LOOP
    0;JMP    

(DOWN)
    @color
    M=-1

    @DRAW
    0;JMP

(UP)
    @color
    M=0

    @DRAW
    0;JMP
