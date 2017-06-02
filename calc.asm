org 100h

code:
jmp start
num1 dw 0
num2 dw 0
wynik dw 0
msg1 db "Wprowadz pierwsza liczbe",10,13,"$"
msg2 db "Wprowadz druga liczbe",10,13,"$"
wynik_msg db "Wynik: ","$"

start:
	mov ah, 09h
	mov dx, msg1
	int 21h
	
	mov ah, 01h
	int 21h
	mov [num1], al
	
	mov ah, 02
	mov dl, 10
	int 21h
	
	mov ah, 09h
	mov dx, msg2
	int 21h
	
	mov ah, 01h
	int 21h
	mov [num2],al
	
	mov ax, [num1]
	mov bx, [num2]
	
	sub ax,30h

	add ax,bx
	
	mov [wynik], ax
	
	mov ah, 02
	mov dl, 10
	int 21h
	
	mov ah, 09h
	mov dx, wynik_msg
	int 21h
	
	mov ah,02h
	mov dl, [wynik]
	int 21h
	
	mov ah, 4Ch
	int 21h
