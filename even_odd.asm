MVI A, 4FH       ; Load number
ANI 01H          ; Mask all bits except LSB
JZ EVEN          ; If result zero → even
MVI B, 01H       ; Odd flag
JMP STORE

EVEN: MVI B, 00H ; Even flag

STORE: STA 2001H
HLT
