LDA 2050H        ; Load binary number
MVI B, 00H       ; Tens
MVI C, 00H       ; Units

LOOP: CPI 0AH
JC DONE           ; If <10 stop
SUI 0AH           ; Subtract 10
INR B             ; Tens++
JMP LOOP

DONE: MOV C, A
MOV A, B
STA 2060H         ; Store tens
MOV A, C
STA 2061H         ; Store units
HLT
