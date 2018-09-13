; Random Integers - Chapter 5 example

.386
.model flat, stdcall

include Irvine32.inc
TAB = 9

.code
random_integer proc
	call Randomize
	call do_rand1
	call do_rand2
	ret
random_integer endp

do_rand1 proc uses ecx
	mov ecx, 10
L1:
	call Random32
	call WriteDec
	mov	 al, TAB
	call WriteChar
	loop L1

	call Crlf
	ret
do_rand1 endp

do_rand2 proc
	mov  ecx,10
L1:
	mov  eax,100
	call RandomRange
	sub  eax, 50
	call WriteInt
	mov  al, TAB
	call WriteChar
	loop L1
	
	call Crlf
	ret
do_rand2 endp



end random_integer
