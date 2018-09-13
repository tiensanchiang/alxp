;Flow Chart - chapter 6 example

.386
.model flat, stdcall

include Irvine32.inc

.data
array DWORD 10,60,20,33,72,89,45,65,72,18
array_size = ($-array)/type array
sample = 50
sum DWORD 0

.code
flow_chart proc
	pushad
	
	mov		esi, 0
	mov		ecx, array_size
	mov		eax, 0
	mov		edx, sample
L0:
	cmp		esi, ecx
	jge		quit
L1:
	cmp		edx, array[esi * type array]
	jge		L2
	add		eax, array[esi * type array]

L2:
	inc		esi

	jmp		L0

quit:
	mov		sum, eax

	call	WriteDec
	call	Crlf

	popad
	ret
flow_chart endp
end flow_chart