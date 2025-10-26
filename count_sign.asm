LXI H, 2050H      ; Starting address of array
MVI C, 05H        ; Number of elements
MVI D, 00H        ; Positive count
MVI E, 00H        ; Negative count

LOOP: MOV A, M
ANI 80H            ; Check MSB (sign bit)
JZ POSITIVE        ; If 0 → positive
INR E              ; Increment negative counter
JMP NEXT

POSITIVE: INR D    ; Increment positive counter

NEXT: INX H
DCR C
JNZ LOOP

MOV A, D
STA 2060H          ; Positive count
MOV A, E
STA 2061H          ; Negative count
HLT
