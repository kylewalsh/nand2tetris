// Fill Basic - set address to screen and fill it black, then exit

@SCREEN
D=A

@addr
M=D

@i
M=0

@8192
D=A

@max
M=D

(LOOP)
    @i
    D=M

    @max
    D=M-D

    @INF
    D;JLT

    // Draw
    @addr 
    A=M
    M=-1

    @addr
    M=M+1

    @i
    M=M+1

    @LOOP
    D;JGT

    @INF
(INF)
    0;JMP