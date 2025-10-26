MVI A, 96H       ; Example number (10010110)
MVI B, 08H       ; Counter for 8 bits
MVI C, 00H       ; Counter for 1's

NEXT: RAR         ; Rotate right through carry
JNC SKIP          ; If no carry, skip increment
INR C             ; If carry=1, increase count

SKIP: DCR B
JNZ NEXT
MOV A, C          ; Final count in A
STA 2000H
HLT
