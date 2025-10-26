MVI B, 05H       ; Number = 5
MVI C, 01H       ; Result = 1

LOOP: MOV A, C
CALL MULTIPLY    ; Multiply C × B
MOV C, A
DCR B
JNZ LOOP
STA 2060H
HLT

; ---------- Subroutine: MULTIPLY ----------
MULTIPLY: MVI D, 00H
MOV E, B
MOV A, C

M_LOOP: ADD D
DCR E
JNZ M_LOOP
RET
