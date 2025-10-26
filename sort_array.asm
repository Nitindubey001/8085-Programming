LXI H, 2050H      ; Starting address of array
MVI C, 05H        ; Number of elements (N)

OUTER: MVI B, 04H ; N-1 comparisons per pass
LXI H, 2050H

INNER: MOV A, M
INX H
CMP M
JC NEXT            ; If A < M, no swap
MOV D, M
MOV M, A
DCX H
MOV M, D
INX H

NEXT: DCR B
JNZ INNER
DCR C
JNZ OUTER
HLT
