;Moving - Chapter 04 example

.386
.model flat, stdcall

.data
var1 word 1000h
var2 word 2000h
arrayb byte 10h,20h,30h,40h,50h
arrayw word 100h,200h,300h
arrayd dword 10000h,20000h

.code
moving proc
	; Demostrating MOVZX instruction
	mov		bx, 0a69bh
	movzx	eax, bx
	movzx	edx, bl
	movzx	cx,	bl

	; Demostrating MOVSX instruction
	mov		bx, 0A69Bh
	movsx	eax, bx
	movsx	edx, bl
	movsx	cx,	bl

	; Memory-to-Memory exchange
	mov		ax, var1
	xchg	ax, var2
	mov		var1, ax

	; Dirct-Offset Adreessing (byte array)
	mov		al, arrayb
	mov		al, [arrayb+1]
	mov		al, [arrayb+2]
 
	; Dirct-Offset Adreessing (word array)
	mov		ax, arrayw
	mov		ax, [arrayw+2]

	; Dirct-Offset Adreessing (dword array)
	mov		eax, arrayd
	mov		eax, [arrayd+4]

moving endp
end moving