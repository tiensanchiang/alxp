; Exchange pairs of array elements - chapter 4

.386
.model flat, stdcall

.data
array word 100h,200h,300h,400h,500h,600h

.code
exchange_array proc

	mov ecx, (lengthof array)/2
	mov esi,0

L1:
	mov ax, array[esi*type word]
	xchg ax, array[esi*type word +type word]

	mov array[esi * type word], ax

	add esi, 2
	loop L1
	
	nop

	mov ecx, lengthof array
	mov esi, 0
L2:
	mov ax, array[esi*type word]
	inc esi

	loop L2

exchange_array endp
end exchange_array