; Use procedure to do int array summary

.386
.model flat, stdcall

.data
array DWORD 1000h,2000h,3000h,4000h
sum DWORD ?
.code
proc_sum_array proc

	mov esi, offset array 
	mov eax, lengthof array
		
	call do_proc_sum_array
	
	mov sum, eax
	nop

proc_sum_array endp

do_proc_sum_array proc uses esi ecx
	
	mov ecx, eax
	mov eax, 0
L1:
	add eax, [esi]
	add esi, type dword
	
	loop L1
	ret
do_proc_sum_array endp
end proc_sum_array