;Add Variables - Chapter3 example

.386
.model flat , stdcall
.stack 4096

.data
first_val    DWORD 20002000h
second_val	 DWORD 11111111h
third_val	 DWORD 22222222h
sum			 DWORD 0

.code
add_variables PROC
	mov eax , first_val
	add eax , second_val
	add eax , third_val
	mov sum , eax
	nop
add_variables ENDP
end add_variables