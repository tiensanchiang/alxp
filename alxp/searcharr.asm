; Searching array with a input integer - chapter 6 example

include Irvine32.inc

.data
array DWORD 100 dup(?)
search_val DWORD ?
prompt BYTE "Enter a value between 0-99 to search:" , 0
msg_found BYTE "Found value at position:",0
msg_not_found BYTE "Value not found",0

.code
search_array proc
	call	Randomize
	call	fill_array
	call	print_array
	mov		edx, offset prompt
	call	WriteString
	call	ReadInt
	mov		search_val, eax
	call	do_search_val
	ret
search_array endp

fill_array proc uses eax ecx esi
	mov		esi, 0
	mov		ecx, lengthof array
	
L1:
	mov		eax, 100
	call	RandomRange
	mov		array[esi * type array], eax
	inc		esi	
	loop	L1
	ret
fill_array endp

do_search_val proc uses eax ecx esi
	
	mov		esi, 0
	mov		eax, search_val
	mov		ecx, lengthof array
L2:
	cmp		eax, array[ esi * type array]
	je		Found
	inc		esi
	loop	L2	

	jmp		NotFound

Found:
	mov		edx, offset msg_found
	call	WriteString
	mov		eax, esi
	call	WriteDec
	jmp		Quit
NotFound:
	mov		edx, offset msg_not_found
	call	WriteString
	jmp		Quit
Quit:
	call Crlf
	ret
do_search_val endp

print_array proc
	pushad
	
	mov		esi, 0
	mov		ecx, lengthof array
L3:
	mov		eax, array[esi * type array]
	call	WriteDec
	mov		eax, 9
	call	WriteChar
	inc		esi
	loop L3

	call	Crlf

	popad
	ret
print_array endp

end search_array