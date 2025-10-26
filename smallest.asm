MVI A, 3CH       ; First number
MVI B, 5FH       ; Second number
CMP B            ; Compare A - B
JC SMALL         ; If carry=1 → A < B
MOV A, B         ; Else A is greater, move B into A
SMALL: STA 2004H ; Store smallest number
HLT
