;Input Loop - Chapter 5 example

include Irvine32.inc

.data
COUNT = 4
BlueTextOnGray = blue + (lightGray * 16)
DefaultColor = lightGray + (black * 16)
arrayD SDWORD 12345678h,1A4B2000h,3434h,7AB9h
prompt BYTE "Enter a 32-bit signed integer:", 0

.code
input_loop proc
	pushad

	mov		eax, BlueTextOnGray
	call	SetTextColor
	call	Clrscr

	mov		esi, offset arrayD
	mov		ebx, type arrayD
	mov		ecx, lengthof arrayD
	call	DumpMem
	
	call	Crlf
	mov		ecx, COUNT
L1:
	mov		edx, offset prompt
	call	WriteString
	call	ReadInt
	call	Crlf

	call	WriteInt
	call	Crlf
	call	WriteHex
	call	Crlf
	call	WriteBin
	call	Crlf
	call	Crlf
	loop L1

	call	WaitMsg
	mov		eax, DefaultColor
	call	SetTextColor
	call	Clrscr
	
	popad
	ret
input_loop endp
end input_loop