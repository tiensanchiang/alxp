;To Binary Ascii - chapter 7 examples

include Irvine32.inc

.data
buffer byte 32 dup(0)
	   byte 0
prompt byte "Enter a integer:",0

.code
binary_ascii proc
	
	mov		edx, offset prompt
	call	WriteString
	call	ReadInt
	mov		esi, offset buffer
	call	to_binary_ascii
	mov		edx, offset buffer
	call	WriteString
	call	Crlf
	
	ret
binary_ascii endp


to_binary_ascii proc
	push	eax
	push	esi
	
	mov		ecx, 32
L0:
	shl		eax, 1
	mov		byte ptr [esi], '0'
	jnc		L1
	mov		byte ptr [esi], '1'
	
L1:	
	inc		esi
	loop	L0

	pop		esi
	pop		eax
	ret
to_binary_ascii	endp 

end binary_ascii
	
