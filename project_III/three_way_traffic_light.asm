; ROAD A   ROAD B   ROAD C
org 00h
start:
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00001100b	;R	R	G
mov p2,#00000001b
call six_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00010010b	;R	Y	Y with blinking effect
mov p2,#00000001b
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00000000b	;R	0	0 with blinking effect
mov p2,#00000001b
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00010010b	;R	Y	Y with blinking effect
mov p2,#00000001b
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00000000b	;R	0	0 with blinking effect
mov p2,#00000001b
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00010010b	;R	Y	Y with blinking effect
mov p2,#00000001b
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00100001b	;R	G	R
mov p2,#00000001b
call six_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00010001b	;Y	Y	R with blinking effect
mov p2,#00000010b
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00000001b	;0	0	R with blinking effect
mov p2,#00000000b	
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00010001b	;Y	Y	R with blinking effect
mov p2,#00000010b
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00000001b	;0	0	R with blinking effect
mov p2,#00000000b	
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00010001b	;Y	Y	R with blinking effect
mov p2,#00000010b
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00001001b	;G	R	R
mov p2,#00000100b
call six_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00001010b	;Y	R	Y with blinking effect
mov p2,#00000010b	
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00001000b	;0	R	0 with blinking effect
mov p2,#00000000b	
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00001010b	;Y	R	Y with blinking effect
mov p2,#00000010b	
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00001000b	;0	R	0 with blinking effect
mov p2,#00000000b	
call one_sec
mov p1,#00000000b	;clear port 1
mov p2,#00000000b	;clear port 2
mov p1,#00001010b	;Y	R	Y with blinking effect
mov p2,#00000010b	
call one_sec
jmp start

one_sec:
PET:Mov R1,#124
    Mov R2,#154
    Mov R3,#8
MEG:Djnz R1,MEG
    Djnz R2,MEG
    Djnz R3,MEG
Ret

six_sec:
PET_1:
	Mov R1,#247
    Mov R2,#153
    Mov R3,#46
MEG_1:
	Djnz R1,MEG_1
    Djnz R2,MEG_1
    Djnz R3,MEG_1
Ret
end