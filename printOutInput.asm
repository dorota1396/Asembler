org 100h

code:
jmp start 
enter_pressed db "wcisnieto ENTER - koniec",10,13,"$"


start:
	mov ah, 01h
	int 21h
	
	cmp al, 0x73
	je inicjal
	
	cmp al, 0Dh
	je enter
	jl dalej
	jg dalej
	
	inicjal:
		mov dl, 0x2
		mov ah, 02h
		int 21h
		mov ah, 02h
		mov dl, 10
		int 21h
		jmp start
		
	
	
	dalej:
		mov dl, al
		mov ah,02h
		int 21h
		mov ah, 02h
		mov dl, 10
		int 21h
		jmp start
	
	enter:
		mov dx, enter_pressed
		jmp koniec
		
	koniec:
	mov ah, 09h
	int 21h
	mov ah,4Ch
	int 21h
