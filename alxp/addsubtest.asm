; Addition and Substraction, Chapter 4 example
.386
.model flat, stdcall

.data
r_val sdword ?
x_val sdword 26
y_val sdword 30
z_val sdword 40

.code
add_sub_test proc
	
	;inc and dec
	mov		ax, 1000h
	inc		ax
	dec		ax

	;Expression r_val = -x_val + (y_val - z_val)
	mov		eax, x_val
	neg		eax
	mov		ebx, y_val
	sub		ebx, z_val
	add		eax, ebx
	mov		r_val, eax

	;Zero flag example
	mov		cx, 1
	sub		cx,	1
	mov		ax, 0FFFFh
	inc		ax

	;Sign flag example
	mov		cx, 0
	sub		cx,	1
	mov		ax, 7FFFh
	add		ax, 2

	;Carry flag example
	mov		al, 0FFh
	add		al, 1

	;Overflow flag example
	mov		al, 127
	add		al, 1
	mov		al, -128
	sub		al, 1
			

add_sub_test endp
end add_sub_test