;Finite State Machine  - Chapter 6 example

.386
.model flat, stdcall

include Irvine32.inc

.data
ENTER_KEY = 13
invalid_msg BYTE "Invalid input.",13,10,0

.code

finite_state_machine proc

SA:
	call	read_next_char
	cmp		al,	'+'
	je		SB
	cmp		al, '-'
	je		SB
	call	IsDigit
	jz		SC
	call	show_error_msg
	jmp		QT
SB:
	call	read_next_char
	call	IsDigit
	jz		SC
	call	show_error_msg
	jmp		QT

SC:
	call	read_next_char
	call	IsDigit
	jz		SC
	cmp		al,	ENTER_KEY
	je		QT
	call	show_error_msg

QT:
	call	Crlf
	ret
finite_state_machine endp

read_next_char proc
	call	ReadChar
	call	WriteChar
	ret
read_next_char endp

show_error_msg proc uses edx
	mov		edx, offset invalid_msg
	call	WriteString
	ret
show_error_msg endp

end finite_state_machine