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
add_sub_test proto
pointers proto
sum_array proto
strcpy proto
big_to_little_endian proto
exchange_array proto
fibonacci proto
reverse_array proto
reverse_string proto
proc_sum_array proto
input_loop proto
random_integer proto
performance_timing proto
search_array proto
flow_chart	proto
case_table	proto
finite_state_machine proto
binary_ascii proto

.code
main PROC
	;INVOKE add_two
	;INVOKE add_two_sum
	;invoke add_variables
	;invoke list_size
	;invoke moving
	;invoke add_sub_test
	;invoke pointers
	;invoke sum_array
	;invoke strcpy
	;invoke big_to_little_endian
	;invoke exchange_array
	;invoke fibonacci
	;invoke reverse_array
	;invoke reverse_string
	;call  proc_sum_array
	;call input_loop
	;call random_integer
	;call performance_timing
	;call search_array
	;call flow_chart
	;call case_table
	;call finite_state_machine
	call binary_ascii
	

    INVOKE ExitProcess,0
main ENDP

end main
