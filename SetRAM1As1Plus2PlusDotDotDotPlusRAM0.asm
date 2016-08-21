// Set RAM[1] = 1 + 2 + ... + n
// initialize sum
// initialize counter
// add counter to sum
// increment counter
// stop when counter is greater than n

// initialization begins
(INITIALIZE_SUM_TO_ZERO)
	@sum
	M=0

(INITIALIZE_COUNTER_TO_ONE)
	@counter
	M=1

(SET_N_TO_RAM_0)
	@R0
	D=M
	@n
	M=D
// initialization ends


// loop begins
(STOP_IF_COUNTER_IS_ABOVE_N)
	@counter
	D=M
	@n
	D=M-D
	@SET_SUM_IN_RAM_1
	D;JLT	
		
(ADD_COUNTER_TO_SUM)
	@counter
	D=M
	@sum
	M=D+M

(INCREMENT_COUNTER)
	@counter
	M=M+1
	@STOP_IF_COUNTER_IS_ABOVE_N
	0;JMP
// loop ends

(SET_SUM_IN_RAM_1)
	@sum
	D=M
	@R1
	M=D

(END)
	@END
	0;JMP
