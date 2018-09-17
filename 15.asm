.model small
.code
org 100h
.386
START:
; SET VIDEO MODE 
	mov ah, 00h 
	mov al, 03h 
	int 10h
	
JANUARY:

	mov ax, 0600h
	mov bh, 5Ch
	mov cx, 0101h
	mov dx, 174Eh 
	int 10h 

	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 7Fh
	lea bp, FirstPgNvg
	mov cx, 32
	mov dh, 03
	mov dl, 25 
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 79h
	lea bp, JanTitle
	mov cx, 22
	mov dh,05
	mov dl, 35 
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 79h 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 

; end program function 
	mov ah, 4ch 
	int 21h 

ret 
FirstPgNvg db 'Press n for next page, q to quit' , 13, 10, '$'
JanTitle db 'January 2017',13,10,'$' 
DaysofWeek db 'Su Mo Tu We Th Fri Sat', 13, 10, '$'

END START     

