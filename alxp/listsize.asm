;List size, Chapter 3 example

.386
.model flat, stdcall

.data
list1 BYTE 01h,02h,03h,04h
size1 DWORD ($ - list1)

list2 DWORD 00000000h,00000001h
size2 DWORD ($-list2)/4

.code
list_size proc
	mov eax , size1
	mov ebx , size2
	add eax , ebx
	nop
list_size endp
end list_size
