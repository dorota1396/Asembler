org 100h

code:
	jmp start
	znak db "*"
	ilosc_znakow dw 10
	spacja db " "

start:

;================gora===================	
	mov cx, [ilosc_znakow]
	gora:
		mov ah, 02h
		mov dl, [znak]
		int 21h
	loop gora
;================srodek=================	
		mov cx,[ilosc_znakow]
		sar cx,1
		mid:
			mov ah,02h		;enter
			mov dl,10
			int 21h
			
			mov ah,02h		
			mov dl, [znak]
			int 21h
			
			push cx
			mov cx, [ilosc_znakow]
			sub cx, 2
			spacje:
				mov ah,02h
				mov dl,[spacja]
				int 21h
			
			loop spacje
		
		
			mov ah,02h
			mov dl,[znak]
			int 21h
			pop cx
		loop mid
;================dol========================	
		mov ah,02h
		mov dl,10
		int 21h
	
	mov cx, [ilosc_znakow]
	dol:
		mov ah, 02h
		mov dl, [znak]
		int 21h
	loop dol
;===========================================
			
	mov ah, 4Ch
	int 21h
