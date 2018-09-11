;addtwo.as - adds two 32-bits integers
;chapter 3 example

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD
add_two PROTO
add_two_sum PROTO
add_variables PROTO
list_size PROTO
moving PROTO

.code
main PROC
	;INVOKE add_two
	;INVOKE add_two_sum
	;invoke add_variables
	;invoke list_size
	
	invoke moving
	

    INVOKE ExitProcess,0
main ENDP

end main
