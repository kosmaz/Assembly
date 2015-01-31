org 00h

;;creation of variabes and setting them to their respective ports
RS bit p3.0 ;set variable RS to p3.0
RW bit p3.1 ;set variable RW to p3.1
e bit p3.2 ;set variable e to p3.2

;;initialization procress
mov a,#38h ;use two lines and 5x7 matrix
call cmd_wrt
mov a,#80h ;force cursor to the beginning of the first line
call cmd_wrt
mov a,#0eh ;display ON, cursor ON
call cmd_wrt
mov a,#14h ;shift cursor postion to the right
call cmd_wrt

mov a,#'J' ;move letter J to accumulator
call data_wrt
mov a,#'O' ;move letter O to accumulator
call data_wrt
mov a,#'H' ;move letter H to accumulator
call data_wrt
mov a,#'N' ;move letter N to accumulator
call data_wrt
mov a,#' ' ;move space character to accumulator
call data_wrt
mov a,#'I' ;move letter I to accumulator
call data_wrt
mov a,#'S' ;move letter S to accumulator
call data_wrt
mov a,#' ' ;move space character to accumulator
call data_wrt
mov a,#'H' ;move letter H to accumulator
call data_wrt
mov a,#'E' ;move letter E to accumulator
call data_wrt
mov a,#'R' ;move letter R to accumulator
call data_wrt
mov a,#'E' ;move letter E to accumulator

data_wrt:
mov p1,a ;move contents of the accumulator to port P1
setb RS	;set bit on RS to enable data mode on the LCD
clr RW ;clear bit on RW to enable write mode on the LCD
setb e ;setb bit on e to start the engaging transition
call delay
clr e ;clear bit on e to end the engaging transitioin
ret

cmd_wrt:
mov p1,a ;move contents of the accumulator to port P1
clr RS	;clear bit on RS to enable command mode on the LCD
clr RW ;clear bit on RW to enable write mode on the LCD
setb e ;setb bit on e to start the engaging transition
call delay
clr e ;clear bit on e to end the engaging transitioin
ret

delay:
PET:Mov R1,#139
    Mov R2,#195
MEG:Djnz R1,MEG
    Djnz R2,MEG
ret

end