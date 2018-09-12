title pointers

.386
.model flat, stdcall

p_byte typedef  ptr byte
p_word typedef  ptr word
p_dword typedef  ptr dword

.data
arrayb byte 10h,20h,30h,40h
arrayw word 100h,200h,300h,400h
arrayd dword 10000h,20000h,30000h,40000h
parrayb p_byte offset arrayb
parrayw p_word offset arrayw
parrayd p_dword offset arrayd

.code
pointers proc
	mov al, [arrayb]
	mov esi, 1
	mov al, arrayb[esi]

	mov esi, parrayb
	mov al,  [esi]

	mov esi, parrayw
	mov ax, [esi]

	mov esi, parrayd
	mov eax, [esi]

	mov esi, 3
	mov eax, arrayd[esi*type dword]

	nop

pointers endp
end pointers