org 00h
start:
mov P1,#00000000b  ;clear bits in port 1
mov P1,#00100001b  ;green light for road A
call five_sec
mov P1,#00000000b  ;clear bits in port 1
mov P1,#00010010b  ;yellow light for road A and road B
call two_sec
mov P1,#00000000b  ;clear bits in port 1
mov P1,#00001100b  ;green light for road B
call five_sec
mov P1,#00000000b  ;clear bits in port 1
mov P1,#00010010b  ;yellow light for road A and road B
call two_sec
jmp start

five_sec:          ;subroutine for five seconds delay
PET:Mov R1,#120
    Mov R2,#0
    Mov R3,#38
MEG:Djnz R1,MEG
    Djnz R2,MEG
    Djnz R3,MEG
Ret

two_sec:		    ;sub-routine for two seconds delay
PET_1:Mov R1,#251
	  Mov R2,#51
          Mov R3,#16
MEG_1:Djnz R1,MEG_1
	   Djnz R2,MEG_1
           Djnz R3,MEG_1
Ret
end
