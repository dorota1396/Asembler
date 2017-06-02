org 100h

code:
jmp start

start:
		mov bx,0
	input:
		mov ah, 01h
		int 21h
		mov dl,al
		inc bx
		push dx
		cmp al,13
		je enter
	jmp input
	
	enter:
		mov ah,02h
		mov al,10
		int 21h
		
	print:	
		pop dx
		mov ah,02h
		int 21h
		cmp bx,0
		je koniec
		dec bx
		loop print
		
	koniec:
		mov ah, 4Ch
		int 21h
