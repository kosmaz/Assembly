org 000h

call initialize

start:
mov p2,#10111111b	;clear p2.6
jb p2.0,numberFour	;jump to number 4 if p2.0 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'1'			;show 1 on lcd screen
call data_wrt

numberFour:
jb p2.1,numberSeven	;jump to number 7 if p2.1 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'4'			;show 4 on lcd screen
call data_wrt

numberSeven:
jb p2.2,astericks	;jump to astericks if p2.2 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'7'			;show 7 on lcd screen
call data_wrt

astericks:
jb p2.3,numberTwo	;jump to number 2 if p2.3 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'*'			;show * on lcd screen
call data_wrt

numberTwo:
mov p2,#11011111b	;clear p2.5
jb p2.0,numberFive	;jump to number 5 if p2.0 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'2'			;show 2 on lcd screen
call data_wrt

numberFive:
jb p2.1,numberEight	;jump to number 8 if p2.1 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'5'			;show 5 on lcd screen
call data_wrt

numberEight:
jb p2.2,zero		;jump to 0 if p2.2 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'8'			;show 8 on lcd screen
call data_wrt

zero:
jb p2.3,numberThree	;jump to number 3 if p2.3 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'0'			;show 0 on lcd screen
call data_wrt

numberThree:
mov p2,#11101111b	;clear p2.4
jb p2.0,numberSix	;jump to number 6 if p2.0 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'3'			;show 3 on lcd screen
call data_wrt

numberSix:
jb p2.1,numberNine	;jump to number 9 if p2.1 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'6'			;show 6 on lcd screen
call data_wrt

numberNine:
jb p2.2,hash		;jump to hash if p2.2 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'9'			;show 9 on lcd screen
call data_wrt

hash:
jb p2.3,virtual_start ;jump to virtual_start if p2.3 is set
mov a,#01h			;clear lcd screen
call cmd_wrt
mov a,#'#'			;show # on lcd screen
call data_wrt

virtual_start:
jmp start
ret

initialize:
RS bit p3.0 	;set variable RS to p3.0
RW bit p3.1 	;set variable RW to p3.1
e bit p3.2 		;set variable e to p3.2

mov a,#38h		;use two lines and 5x7 matrix
call cmd_wrt
mov a,#80h 		;force cursor to the beginning of the first line
call cmd_wrt
mov a,#0eh 		;display ON, cursor ON
call cmd_wrt
mov a,#14h 		;shift cursor postion to the right
call cmd_wrt
ret

cmd_wrt:
mov p1,a		;move contents of the accumulator to port P1
clr RS			;clear bit on RS to enable command mode on the LCD
clr RW 			;clear bit on RW to enable write mode on the LCD
setb e 			;setb bit on e to start the engaging transition
call delay
clr e 			;clear bit on e to end the engaging transitioin
ret

data_wrt:
mov p1,a		;move contents of the accumulator to port P1
setb RS			;set bit on RS to enable data mode on the LCD
clr RW			;clear bit on RW to enable write mode on the LCD
setb e			;setb bit on e to start the engaging transition
call delay
clr e			;clear bit on e to end the engaging transitioin
ret

delay:
PET:Mov R1,#226
    Mov R2,#4
MEG:Djnz R1,MEG
    Djnz R2,MEG
ret

end