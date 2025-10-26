LDA 2050H        ; Load value from 2050H into A
MOV B, A         ; Store A into B (temporary)
LDA 2051H        ; Load value from 2051H into A
STA 2050H        ; Store second value into 2050H
MOV A, B         ; Get first value back from B
STA 2051H        ; Store first value into 2051H
HLT
