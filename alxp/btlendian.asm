; Big endian to little endian - chapter 4 exercises

.386
.model flat, stdcall

.data
big_endian byte 12h,34h,56h,78h
little_endian DWORD ?

.code
big_to_little_endian proc
	mov ecx, lengthof big_endian
	mov esi, 0

L1:
	mov al, big_endian[ecx - 1]
	mov byte ptr little_endian[esi], al

	inc esi
	loop L1
	nop
big_to_little_endian endp
end big_to_little_endian