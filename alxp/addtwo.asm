;addtwo.as - adds two 32-bits integers
;chapter 3 example

.386
.model flat, stdcall
.stack 4096

.code
add_two PROC
    mov eax, 5
    add eax, 6
add_two ENDP

end add_two
