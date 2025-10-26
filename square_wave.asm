MVI A, 00H
LOOP: OUT 01H        ; Send 0 to port
CALL DELAY

MVI A, 0FFH
OUT 01H              ; Send 1 to port
CALL DELAY
JMP LOOP

; ----- Delay Subroutine -----
DELAY: LXI B, FFFFH
DCR B
JNZ DELAY
RET
