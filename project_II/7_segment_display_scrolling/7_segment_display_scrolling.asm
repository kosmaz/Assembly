org 00h
mov p3,#00000000b	;clear port 3
mov 34h,#11111111b	;write space to memory 34
mov 33h,#11111111b	;write space to memory 33
mov 32h,#11111111b	;write space to memory 32
mov 31h,#11111111b	;write space to memory 31
mov 30h,#11111111b	;write space to memory 30
start:
call letter_C		;write character C to memory
call show			;show characters present in memory
call letter_A		;write character A to memory
call show			;show characters present in memory
call letter_P		;write character P to memeory
call show			;show characters present in memory
call letter_S		;write character S to memory
call show 			;show characters present in memory
call space			;write character ANSI space to memory
call show 			;show characters present in memory
call space			;write character ANSI space to memory
call show 			;show characters present in memory
call space			;write character ANSI space to memory
call show 			;show characters present in memory
call space			;write character ANSI space to memory
call show 			;show characters present in memory
jmp start

letter_C:
mov 30h,#11000110b	;write character C to memory 30
Ret

letter_A:
mov 30h,#10001000b	;write character A to memory 30
Ret

letter_P:
mov 30h,#10001100b	;write character P to memory 30
Ret

letter_S:
mov 30h,#10010010b	;write character S to memory 30
Ret

space:
mov 30h,#11111111b	;write character ANSI space to memory 30
Ret

show:
mov 34h,33h			;copy contents of memory 33 to 34
mov 33h,32h			;copy contents of memory 32 to 33
mov 32h,31h			;copy contents of memory 31 to 32
mov 31h,30h			;copy contents of memory 30 to 31
call display		;call display(x200)
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
call display
Ret

display:
mov p1,34h			;display content of memory 34 on port 1
setb p3.0			;activate port 3.0
call one_milli_sec
clr p3.0			;deactivate port 3.0
mov p1,33h			;display content of memory 33 on port 1
setb p3.1			;activate port 3.1
call one_milli_sec
clr p3.1			;deactivate port 3.1
mov p1,32h			;display content of memory 32 on port 1
setb p3.2			;activate port 3.2
call one_milli_sec
clr p3.2			;deactivate port 3.2
mov p1,31h			;display content of memory 31 on port 1
setb p3.3			;activate port 3.3
call one_milli_sec
clr p3.3			;deactivate port 3.3
Ret

one_milli_sec:
PET:Mov R1,#240
    Mov R2,#2
MEG:Djnz R1,MEG
    Djnz R2,MEG
Ret

end