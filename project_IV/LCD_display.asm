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

start:
call subject
call clearscreen
call lecturer
call clearscreen
call main
call clearscreen
call first_name
call clearscreen
call second_name
call clearscreen
call third_name
call clearscreen
call fourth_name
call clearscreen
call fifth_name
call clearscreen
call endline
call clearscreen
jmp start

main:
mov a,#'T' ;move letter T to accumulator-1
call data_wrt
mov a,#'H' ;move letter H to accumulator-2
call data_wrt
mov a,#'I' ;move letter I to accumulator-3
call data_wrt
mov a,#'S' ;move letter S to accumulator-4
call data_wrt
mov a,#' ' ;move space character to accumulator-5
call data_wrt
mov a,#'I' ;move letter I to accumulator-6
call data_wrt
mov a,#'S' ;move letter S to accumulator-7
call data_wrt
mov a,#' ' ;move space character to the accumulator-8
call data_wrt
mov a,#'G' ;move letter G to accumulator-9
call data_wrt
mov a,#'R' ;move letter R to accumulator-10
call data_wrt
mov a,#'O' ;move letter O to accumulator-11
call data_wrt
mov a,#'U' ;move letter U to accumulator-12
call data_wrt
mov a,#'P' ;move letter P to accumulator-13
call data_wrt
mov a,#' ' ;move space character to accumulator-14
call data_wrt
mov a,#'1' ;move letter 1 to accumulator-15
call data_wrt
mov a,#'3' ;move letter 3 to accumulator-16
call data_wrt

call slow_delay

mov a,#0c0h	;move cursor to second line position 1
call cmd_wrt
mov a,#'M' ;move  letter M to accumulator-1
call data_wrt
mov a,#'e' ;move letter e to accumulator-2
call data_wrt
mov a,#'m' ;move letter m to accumulator-3
call data_wrt
mov a,#'b' ;move letter b to accumulator-4
call data_wrt
mov a,#'e' ;move letter e to accumulator-5
call data_wrt
mov a,#'r' ;move letter r to accumulator-6
call data_wrt
mov a,#'s' ;move letter s to accumulator-7
call data_wrt
mov a,#' ' ;move space character to the accumulator-8
call data_wrt
mov a,#'I' ;move letter I to accumulator-9
call data_wrt
mov a,#'n' ;move letter n to accumulator-10
call data_wrt
mov a,#'c' ;move letter c to accumulator-11
call data_wrt
mov a,#'l' ;move letter l to accumulator-12
call data_wrt
mov a,#'u' ;move letter u to accumulator-13
call data_wrt
mov a,#'d' ;move letter d to accumulator-14
call data_wrt
mov a,#'e' ;move letter e to accumulator-15
call data_wrt
mov a,#':' ;move the colon character to accumulator-16
call data_wrt
ret

first_name:
mov a,#80h ;force cursor to the beginning of the first line
call cmd_wrt
mov a,#'A' ;move letter A to accumulator-1
call data_wrt
mov a,#'k' ;move letter k to accumulator-2
call data_wrt
mov a,#'u' ;move letter u to accumulator-3
call data_wrt
mov a,#'b' ;move letter b to accumulator-4
call data_wrt
mov a,#'u' ;move letter u to accumulator-5
call data_wrt
mov a,#'e' ;move letter e to accumulator-6
call data_wrt
mov a,#'z' ;move letter z to accumulator-7
call data_wrt
mov a,#'e' ;move letter e to accumulator-8
call data_wrt
mov a,#' ' ;move space character to accumulator-9
call data_wrt
mov a,#'K' ;move letter K to accumulator-10
call data_wrt
mov a,#'.' ;move letter . to accumulator-11
call data_wrt
mov a,#' ' ;move space character to accumulator-12
call data_wrt
mov a,#'C' ;move letter C to accumulator-13
call data_wrt
mov a,#'.' ;move letter . to accumulator-14
call data_wrt

mov a,#0c0h	;move cursor to second line position 1
call cmd_wrt
mov a,#'2' ;move number 2 to accumulator-1
call data_wrt
mov a,#'0' ;move number 0 to accumulator-2
call data_wrt
mov a,#'1' ;move number 1 to accumulator-3
call data_wrt
mov a,#'1' ;move number 1 to accumulator-4
call data_wrt
mov a,#'3' ;move number 3 to accumulator-5
call data_wrt
mov a,#'6' ;move number 6 to accumulator-6
call data_wrt
mov a,#'4' ;move number 4 to accumulator-7
call data_wrt
mov a,#'0' ;move number 0 to accumulator-8
call data_wrt
mov a,#'6' ;move number 6 to accumulator-9
call data_wrt
mov a,#'2' ;move number 2 to accumulator-10
call data_wrt
ret

second_name:
mov a,#80h ;force cursor to the beginning of the first line
call cmd_wrt
mov a,#'O' ;move letter O to accumulator-1
call data_wrt
mov a,#'k' ;move letter k to accumulator-2
call data_wrt
mov a,#'o' ;move letter o to accumulator-3
call data_wrt
mov a,#'y' ;move letter y to accumulator-4
call data_wrt
mov a,#'e' ;move letter e to accumulator-5
call data_wrt
mov a,#' ' ;move space character to accumulator-6
call data_wrt
mov a,#'C' ;move letter C to accumulator-7
call data_wrt
mov a,#'h' ;move letter h to accumulator-8
call data_wrt
mov a,#'i' ;move letter i to accumulator-9
call data_wrt
mov a,#'d' ;move letter d to accumulator-10
call data_wrt
mov a,#'e' ;move letter e to accumulator-11
call data_wrt
mov a,#'r' ;move letter r to accumulator-12
call data_wrt
mov a,#'a' ;move letter a to accumulator-13
call data_wrt
mov a,#' ' ;move space character to accumulator-13
call data_wrt
mov a,#'D' ;move letter D to accumulator-14
call data_wrt
mov a,#'.' ;move character . to accumulator-15
call data_wrt

mov a,#0c0h	;move cursor to second line position 1
call cmd_wrt
mov a,#'2' ;move number 2 to accumulator-1
call data_wrt
mov a,#'0' ;move number 0 to accumulator-2
call data_wrt
mov a,#'1' ;move number 1 to accumulator-3
call data_wrt
mov a,#'1' ;move number 1 to accumulator-4
call data_wrt
mov a,#'3' ;move number 3 to accumulator-5
call data_wrt
mov a,#'6' ;move number 6 to accumulator-6
call data_wrt
mov a,#'4' ;move number 4 to accumulator-7
call data_wrt
mov a,#'0' ;move number 0 to accumulator-8
call data_wrt
mov a,#'6' ;move number 6 to accumulator-9
call data_wrt
mov a,#'3' ;move number 3 to accumulator-10
call data_wrt
ret

third_name:
mov a,#80h ;force cursor to the beginning of the first line
call cmd_wrt
mov a,#'N' ;move letter N to accumulator-1
call data_wrt
mov a,#'n' ;move letter n to accumulator-2
call data_wrt
mov a,#'a' ;move letter a to accumulator-3
call data_wrt
mov a,#'m' ;move letter m to accumulator-4
call data_wrt
mov a,#'a' ;move letter a to accumulator-5
call data_wrt
mov a,#'n' ;move letter n to accumulator-6
call data_wrt
mov a,#'i' ;move letter i to accumulator-7
call data_wrt
mov a,#' ' ;move space character to accumulator-8
call data_wrt
mov a,#'U' ;move letter U to accumulator-9
call data_wrt
mov a,#'.' ;move letter . to accumulator-10
call data_wrt
mov a,#' ' ;move space character to accumulator-11
call data_wrt
mov a,#'P' ;move letter P to accumulator-12
call data_wrt
mov a,#'.' ;move letter . to accumulator-13
call data_wrt

mov a,#0c0h	;move cursor to second line position 1
call cmd_wrt
mov a,#'2' ;move number 2 to accumulator-1
call data_wrt
mov a,#'0' ;move number 0 to accumulator-2
call data_wrt
mov a,#'1' ;move number 1 to accumulator-3
call data_wrt
mov a,#'1' ;move number 1 to accumulator-4
call data_wrt
mov a,#'3' ;move number 3 to accumulator-5
call data_wrt
mov a,#'6' ;move number 6 to accumulator-6
call data_wrt
mov a,#'4' ;move number 4 to accumulator-7
call data_wrt
mov a,#'0' ;move number 0 to accumulator-8
call data_wrt
mov a,#'6' ;move number 6 to accumulator-9
call data_wrt
mov a,#'4' ;move number 4 to accumulator-10
call data_wrt
ret

fourth_name:
mov a,#80h ;force cursor to the beginning of the first line
call cmd_wrt
mov a,#'E' ;move letter E to accumulator-1
call data_wrt
mov a,#'z' ;move letter z to accumulator-2
call data_wrt
mov a,#'e' ;move letter e to accumulator-3
call data_wrt
mov a,#'n' ;move letter n to accumulator-4
call data_wrt
mov a,#'w' ;move letter w to accumulator-5
call data_wrt
mov a,#'a' ;move letter a to accumulator-6
call data_wrt
mov a,#'n' ;move letter n to accumulator-7
call data_wrt
mov a,#'n' ;move letter n to accumulator-8
call data_wrt
mov a,#'e' ;move letter e to accumulator-9
call data_wrt
mov a,#' ' ;move space character to accumulator-10
call data_wrt
mov a,#'I' ;move letter I to accumulator-11
call data_wrt
mov a,#'.' ;move letter . to accumulator-12
call data_wrt
mov a,#' ' ;move space character to accumulator-13
call data_wrt
mov a,#'C' ;move letter C to accumulator-14
call data_wrt
mov a,#'.' ;move letter . to accumulator-15
call data_wrt

mov a,#0c0h	;move cursor to second line position 1
call cmd_wrt
mov a,#'2' ;move number 2 to accumulator-1
call data_wrt
mov a,#'0' ;move number 0 to accumulator-2
call data_wrt
mov a,#'1' ;move number 1 to accumulator-3
call data_wrt
mov a,#'1' ;move number 1 to accumulator-4
call data_wrt
mov a,#'3' ;move number 3 to accumulator-5
call data_wrt
mov a,#'6' ;move number 6 to accumulator-6
call data_wrt
mov a,#'4' ;move number 4 to accumulator-7
call data_wrt
mov a,#'0' ;move number 0 to accumulator-8
call data_wrt
mov a,#'6' ;move number 6 to accumulator-9
call data_wrt
mov a,#'5' ;move number 5 to accumulator-10
call data_wrt
ret

fifth_name:
mov a,#80h ;force cursor to the beginning of the first line
call cmd_wrt
mov a,#'N' ;move letter N to accumulator-1
call data_wrt
mov a,#'w' ;move letter w to accumulator-2
call data_wrt
mov a,#'o' ;move letter o to accumulator-3
call data_wrt
mov a,#'g' ;move letter g to accumulator-4
call data_wrt
mov a,#'b' ;move letter b to accumulator-5
call data_wrt
mov a,#'o' ;move letter o to accumulator-6
call data_wrt
mov a,#' ' ;move space character to accumulator-7
call data_wrt
mov a,#'C' ;move letter C to accumulator-8
call data_wrt
mov a,#'o' ;move letter o to accumulator-9
call data_wrt
mov a,#'l' ;move letter l to accumulator-10
call data_wrt
mov a,#'l' ;move letter l to accumulator-11
call data_wrt
mov a,#'i' ;move letter i to accumulator-12
call data_wrt
mov a,#'n' ;move letter n to accumulator-13
call data_wrt
mov a,#'s' ;move letter s to accumulator-14
call data_wrt
mov a,#' ' ;move space character to accumulator-15
call data_wrt
mov a,#'K' ;move letter K to accumulator-16
call data_wrt


mov a,#0c0h	;move cursor to second line position 1
call cmd_wrt
mov a,#'2' ;move number 2 to accumulator-1
call data_wrt
mov a,#'0' ;move number 0 to accumulator-2
call data_wrt
mov a,#'1' ;move number 1 to accumulator-3
call data_wrt
mov a,#'1' ;move number 1 to accumulator-4
call data_wrt
mov a,#'3' ;move number 3 to accumulator-5
call data_wrt
mov a,#'6' ;move number 6 to accumulator-6
call data_wrt
mov a,#'4' ;move number 4 to accumulator-7
call data_wrt
mov a,#'0' ;move number 0 to accumulator-8
call data_wrt
mov a,#'6' ;move number 6 to accumulator-9
call data_wrt
mov a,#'6' ;move number 6 to accumulator-10
call data_wrt
ret

subject:
mov a,#80h ;force cursor to the beginning of the first line
call cmd_wrt

mov a,#'E' ;move letter E to accumulator-1
call data_wrt
mov a,#'C' ;move letter C to accumulator-2
call data_wrt
mov a,#'E' ;move letter E to accumulator-3
call data_wrt
mov a,#' ' ;move space character to accumulator-4
call data_wrt
mov a,#'4' ;move number 4 to accumulator-5
call data_wrt
mov a,#'2' ;move number 2 to accumulator-6
call data_wrt
mov a,#'1' ;move number 1 to accumulator-7
call data_wrt
mov a,#' ' ;move space character to accumulator-8
call data_wrt
mov a,#'P' ;move letter P to accumulator-9
call data_wrt
mov a,#'R' ;move letter R to accumulator-10
call data_wrt
mov a,#'O' ;move letter O to accumulator-11
call data_wrt
mov a,#'J' ;move letter J to accumulator-12
call data_wrt
mov a,#'E' ;move letter E to accumulator-13
call data_wrt
mov a,#'C' ;move letter C to accumulator-14
call data_wrt
mov a,#'T' ;move letter T to accumulator-15
call data_wrt
ret

lecturer:
mov a,#80h ;force cursor to the beginning of the first line
call cmd_wrt

mov a,#'L' ;move letter L to accumulator-1
call data_wrt
mov a,#'e' ;move letter e to accumulator-2
call data_wrt
mov a,#'c' ;move letter c to accumulator-3
call data_wrt
mov a,#'t' ;move letter t to accumulator-4
call data_wrt
mov a,#'u' ;move letter u to accumulator-5
call data_wrt
mov a,#'r' ;move letter r to accumulator-6
call data_wrt
mov a,#'e' ;move letter e to accumulator-7
call data_wrt
mov a,#'r' ;move letter r to accumulator-8
call data_wrt

mov a,#0c0h	;move cursor to second line position 1
call cmd_wrt
mov a,#'I' ;move letter I to accumulator-2
call data_wrt
mov a,#'n' ;move letter n to accumulator-3
call data_wrt
mov a,#'c' ;move letter c to accumulator-4
call data_wrt
mov a,#'h' ;move letter l to accumulator-5
call data_wrt
mov a,#'a' ;move letter u to accumulator-6
call data_wrt
mov a,#'r' ;move letter d to accumulator-7
call data_wrt
mov a,#'g' ;move letter e to accumulator-8
call data_wrt
mov a,#'e' ;move letter e to accumulator-9
call data_wrt
mov a,#':' ;move the colon character to accumulator-10
call data_wrt

call clearscreen

mov a,#80h ;force cursor to the beginning of the first line
call cmd_wrt

mov a,#'E' ;move letter E to accumulator-1
call data_wrt
mov a,#'n' ;move letter n to accumulator-2
call data_wrt
mov a,#'g' ;move letter g to accumulator-3
call data_wrt
mov a,#'r' ;move letter r to accumulator-4
call data_wrt
mov a,#'.' ;move character . to accumulator-5
call data_wrt

mov a,#0c0h	;move cursor to second line position 1
call cmd_wrt
mov a,#'A' ;move letter A to accumulator-2
call data_wrt
mov a,#'z' ;move letter z to accumulator-3
call data_wrt
mov a,#'u' ;move letter u to accumulator-4
call data_wrt
mov a,#'b' ;move letter b to accumulator-5
call data_wrt
mov a,#'i' ;move letter i to accumulator-6
call data_wrt
mov a,#'k' ;move letter k to accumulator-7
call data_wrt
mov a,#'e' ;move letter e to accumulator-8
call data_wrt
mov a,#' ' ;move space character to accumulator-9
call data_wrt
mov a,#'A' ;move letter A to accumulator-10
call data_wrt
mov a,#'n' ;move letter n to accumulator-11
call data_wrt
mov a,#'i' ;move letter i to accumulator-12
call data_wrt
mov a,#'e' ;move letter e to accumulator-13
call data_wrt
mov a,#'d' ;move letter d to accumulator-14
call data_wrt
mov a,#'u' ;move letter u to accumulator-15
call data_wrt
ret

endline:
mov a,#80h ;force cursor to the beginning of the first line
call cmd_wrt

mov a,#'T' ;move letter T to accumulator-1
call data_wrt
mov a,#'H' ;move letter H to accumulator-2
call data_wrt
mov a,#'A' ;move letter A to accumulator-3
call data_wrt
mov a,#'N' ;move letter N to accumulator-4
call data_wrt
mov a,#'K' ;move letter K to accumulator-5
call data_wrt
mov a,#' ' ;move space character to accumulator-6
call data_wrt
mov a,#'Y' ;move letter Y to accumulator-7
call data_wrt
mov a,#'O' ;move letter O to accumulator-8
call data_wrt
mov a,#'U' ;move letter U to accumulator-9
call data_wrt
mov a,#'!' ;move character ! to accumulator-7
call data_wrt
mov a,#'!' ;move character ! to accumulator-8
call data_wrt
mov a,#'!' ;move character ! to accumulator-9
call data_wrt
ret

clearscreen:
call slow_delay
mov a,#01h ;clear screen of the lcd
call cmd_wrt_2
ret


data_wrt:
mov p1,a ;move contents of the accumulator to port P1
setb RS	;set bit on RS to enable data mode on the LCD
clr RW ;clear bit on RW to enable write mode on the LCD
setb e ;setb bit on e to start the engaging transition
call delay_wrt
clr e ;clear bit on e to end the engaging transitioin
ret

cmd_wrt:
mov p1,a ;move contents of the accumulator to port P1
clr RS	;clear bit on RS to enable command mode on the LCD
clr RW ;clear bit on RW to enable write mode on the LCD
setb e ;setb bit on e to start the engaging transition
call delay_wrt
clr e ;clear bit on e to end the engaging transitioin
ret

cmd_wrt_2:
mov p1,a ;move contents of the accumulator to port P1
clr RS	;clear bit on RS to enable command mode on the LCD
clr RW ;clear bit on RW to enable write mode on the LCD
setb e ;setb bit on e to start the engaging transition
call delay_clr
clr e ;clear bit on e to end the engaging transitioin
ret

delay_wrt:
Mov R1,#139
Mov R2,#195
MEG:
Djnz R1,MEG
Djnz R2,MEG
ret

delay_clr:
Mov R1,#114
Mov R2,#20
MEG_1:
Djnz R1,MEG_1
Djnz R2,MEG_1
ret

slow_delay:
Mov R1,#124
Mov R2,#154
Mov R3,#8
MEG_2:
Djnz R1,MEG_2
Djnz R2,MEG_2
Djnz R3,MEG_2
ret

end