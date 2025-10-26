LXI H, 2050H      ; Start address
MVI C, 05H        ; Number of elements
MVI D, 00H        ; Even count
MVI E, 00H        ; Odd count

LOOP: MOV A, M
ANI 01H            ; Check LSB
JZ EVEN
INR E              ; Odd count++
JMP NEXT

EVEN: INR D        ; Even count++

NEXT: INX H
DCR C
JNZ LOOP

MOV A, D
STA 2060H          ; Store even count
MOV A, E
STA 2061H          ; Store odd count
HLT
