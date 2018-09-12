; Reverse string - chapter 5 example

.386
.model flat, stdcall

.data
u_name byte 'Arbraham Lincon', 0
u_size = ($ - offset u_name) - 1

.code
reverse_string proc
	
	mov ecx,u_size
	mov esi, 0

L1:
	movzx eax, u_name[esi]
	push eax
	
	inc esi
	loop L1

	mov esi, 0
	mov ecx, u_size
L2:
	pop eax
	mov u_name[esi], al

	inc esi
	loop L2

	nop

reverse_string endp
end reverse_string