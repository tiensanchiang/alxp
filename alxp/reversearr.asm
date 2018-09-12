; Reversing array - chapter 4 exercises

.386
.model flat, stdcall

REGISTER EQU <al>

t_array typedef byte 

.data
array t_array 01h,02h,03h,04h,05h,06h 

.code
reverse_array proc
	
	mov ecx,  (lengthof array)/2
	mov esi, 0
	mov edi, (lengthof array - 1)

L1:
	mov REGISTER, array[esi * type t_array]
	xchg REGISTER, array[edi * type t_array]
	mov array[esi * type t_array], REGISTER

	inc esi
	dec edi
	
	loop L1

	mov esi, 0

	mov ecx, lengthof array
L2:
	mov REGISTER, array[esi*type t_array ]
	inc esi

	loop L2

	nop

reverse_array endp
end reverse_array
