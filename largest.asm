LXI H, 2050H      ; Starting address of array
MOV B, M          ; Assume first number is largest
MVI C, 05H        ; Counter (no. of elements)

BACK: INX H        ; Next element
DCR C              ; Decrease counter
JZ DONE            ; If zero, end loop
MOV A, M           ; Get next number
CMP B              ; Compare with current largest
JNC NEXT           ; If A <= B, skip update
MOV B, A           ; Else update B as largest

NEXT: JMP BACK

DONE: MOV A, B     ; Store largest in A
STA 2060H          ; Save result at 2060H
HLT
