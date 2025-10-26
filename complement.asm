MVI A, 4FH       ; Load number
CMA              ; 1’s complement
STA 2002H        ; Store 1’s complement
INR A            ; Add 1 → 2’s complement
STA 2003H        ; Store 2’s complement
HLT
