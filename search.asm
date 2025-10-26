LXI H, 2050H      ; Start of array
MVI C, 05H        ; Number of elements
MVI D, 40H        ; Element to search
MVI E, 00H        ; Position counter

LOOP: INX E
MOV A, M
CMP D
JZ FOUND
INX H
DCR C
JNZ LOOP
JMP NOTFOUND

FOUND: MOV A, E
STA 2060H          ; Store position (1-based)
HLT

NOTFOUND: MVI A, 00H
STA 2060H          ; Store 0 if not found
HLT
