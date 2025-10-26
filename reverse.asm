LXI H, 2050H      ; Start of block
LXI D, 2054H      ; End of block (example 5 elements)
MVI C, 03H        ; Number of swaps = n/2

REVERSE: MOV A, M
LDAX D
MOV B, A           ; Save end element
MOV A, M
STAX D             ; Swap 1 ↔ n
MOV M, B

INX H
DCX D
DCR C
JNZ REVERSE
HLT
