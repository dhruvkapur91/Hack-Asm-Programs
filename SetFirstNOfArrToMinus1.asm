//
// for(int i = 0; i<n; i++)
// 	arr[i] = -1
//

// set arr to 100
	@100
	D=A
	@arr
	M=D

// set n to RAM0
	@R0
	D=M
	@n
	M=D

// initialize counter to 0
	D=0
	@counter
	M=D

(CHECK_IF_COUNTER_MORE_THAN_N)
// check if counter is more than n, if so end
	@counter
	D=M
	@n
	D=D-M
	@END
	D;JEQ

// get new index of array
	@arr
	D=M
	@counter
	D=D+M
	@newIndex
	M=D

// set new index of array to -1
	@newIndex
	A=M
	M=-1

// increment counter
	@counter
	M=M+1

// loop
	@CHECK_IF_COUNTER_MORE_THAN_N
	0;JMP
	

(END)
	@END
	0;JMP 
