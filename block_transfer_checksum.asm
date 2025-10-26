LXI H, 2050H     ; Source block
LXI D, 2070H     ; Destination block
MVI C, 05H       ; Number of bytes
MVI A, 00H       ; Checksum = 0

LOOP: MOV B, M
ADD B             ; Add to checksum
STAX D            ; Store to destination
INX H
INX D
DCR C
JNZ LOOP

STA 2080H         ; Store checksum
HLT
