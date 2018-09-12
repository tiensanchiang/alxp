title array summarize - chapter 4 example

.386
.model flat, stdcall

.data
array byte 10h,20h,30h,40h
sum dword ?
.code
sum_array proc
	mov eax, 0
	mov edi, offset array
	mov ecx, lengthof array
L1:
	add al, [edi]
	add edi, type array
	loop L1

	nop
sum_array endp
end sum_array
