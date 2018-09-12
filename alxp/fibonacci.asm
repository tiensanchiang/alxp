; Fibonacci - exercisers in chapter 4

.386
.model flat, stdcall

.code
fibonacci proc
	
	mov ecx, 5
	mov eax,1
	mov ebx,1

L1:
	mov edx, eax
	add eax, ebx
	
	mov ebx, edx
	loop L1
	
	nop
fibonacci endp
end fibonacci