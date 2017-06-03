org 100h
code:
	jmp start

start: 
	
	mov ah,00h
	mov al,10h
	int 10h
	
	mov ah,06h
	mov al,0
	mov bh,1
	mov dh, 24
	mov dl,79
	int 10h
	
	mov ah,02h
	mov bh,0
	mov dl,40
	mov dh,10
	int 10h

	mov ah, 0Ah		;serce
	mov al, 3h
	mov bh, 0
	mov bl, 074h
	mov cx, 1
	int 10h
	
	mov ah,4Ch
	int 21h
