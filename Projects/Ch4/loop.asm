// loop from i = 0 to 100

@i
M=0

@100
D=A

@max
M=D

(LOOP)
    @i
    D=M

    @max
    D=M-D

    @INF
    D;JLE

    @i
    M=M+1

    @LOOP
    D;JGT

    @INF
(INF)
    0;JMP