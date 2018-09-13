; Performance Timing - Chapter 5 examples
include Irvine32.inc

.data
OUT_LOOP_COUNT = 5
msg1 byte "Please wait...",0dh,0ah,0
msg2 byte "Elapsed millseconds:",0
start_time DWORD 0

.code
performance_timing proc
	
	mov		edx, offset msg1
	call	WriteString

	call	GetMSeconds
	mov		start_time,eax

	mov		ecx, OUT_LOOP_COUNT
L1:
	call	inner_loop
	loop	L1

	call	GetMSeconds
	sub		eax, start_time
	mov		start_time, eax
	
	mov		edx, offset msg2
	call	WriteString
	call	WriteDec
	call	Crlf

	ret
performance_timing endp

inner_loop proc uses ecx eax
	
	mov		ecx,0fffffffh
L2:
	mul		eax
	mul		eax
	mul		eax
	loop	L2

	ret
inner_loop endp

end performance_timing