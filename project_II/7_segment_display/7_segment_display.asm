org 00h
mov p3,#00000000b	;clear port 3
start:
mov p1,#11000110b	;show C
setb p3.0			;set bit on port 3.0
call one_sec
clr p3.0			;clear bit on port 3.0
mov p1,#10001000b	;show A
setb p3.1			;set bit on port 3.1
call one_sec
clr p3.1			;clear bit on port 3.1
mov p1,#10001100b	;show P
setb p3.2			;set bit on port 3.2
call one_sec
clr p3.2			;clear bit on port 3.2
mov p1,#10010010b	;show S
setb p3.3			;set bit on port 3.3
call one_sec
clr p3.3			;clear bit on port 3.3
jmp start

one_sec:
PET:Mov R1,#124
    Mov R2,#154
    Mov R3,#8
MEG:Djnz R1,MEG
    Djnz R2,MEG
    Djnz R3,MEG
Ret
end