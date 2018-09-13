;Case Table - chapter 6 example

include Irvine32.inc

.data
table BYTE 'A' 
	  DWORD process_a
entry_size = ($-table)
	  BYTE 'B' 
	  DWORD process_b
	  BYTE 'C' 
	  DWORD process_c
	  BYTE 'D' 
	  DWORD process_d

num_entries = ($-table)/entry_size
prompt BYTE "Press Capital A,B,C or D:", 0
msg_a	BYTE "process_a", 0
msg_b	BYTE "process_b", 0
msg_c	BYTE "process_c", 0
msg_d	BYTE "process_d", 0

.code
case_table proc
	
	mov		edx, offset prompt
	call	WriteString
	call	ReadChar

	mov		esi, offset table
	mov		ecx, num_entries
L0:
	cmp		al,	[esi]
	jne		L1
	call	NEAR PTR [esi+1]
	jmp		L2
L1:
	add		esi, entry_size
	loop	L0

L2:
	ret
case_table endp

process_a proc uses ebx
	mov		edx, offset msg_a
	call	WriteString
	call	Crlf
	ret
process_a endp

process_b proc uses ebx

	mov		edx, offset msg_b
	call	WriteString
	call	Crlf
	ret
process_b endp

process_c proc uses ebx

	mov		edx, offset msg_c
	call	WriteString
	call	Crlf
	ret
process_c endp

process_d proc uses ebx

	mov		edx, offset msg_d
	call	WriteString
	call	Crlf
	ret
process_d endp

end case_table