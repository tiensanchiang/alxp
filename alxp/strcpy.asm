title Copy a string - chapter 4 example

.386
.model flat, stdcall

.data
source byte 'this is a source string', 0
target byte sizeof source dup(0)

.code
strcpy proc

; First version use edi
	mov ecx, sizeof source
	mov esi, offset source
	mov edi, offset target
L1:
	mov al, [esi]
	mov [edi], al

	add edi, type byte
	add esi,  type byte
	loop L1

	nop

; Second version do not use edi
	mov ecx, sizeof source
	mov esi, 0
L2:
	mov al, source[esi]
	mov target[esi], al

	inc esi
	loop L2

	nop

strcpy endp
end strcpy
