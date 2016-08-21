// Set R2 = R1 x R0

(STORE_R0_IN_OP1)
	@R0
	D=M
	@OP1
	M=D

(STORE_R1_IN_OP2)
	@R1
	D=M
	@OP2
	M=D

(SET_R2_TO_0)
	@R2
	M=0

(STOP_IF_OP2_IS_0)
	@OP2
	D=M
	@END
	D; JEQ

(ADD_OP1_TO_R2)
	@OP1
	D=M
	@R2
	M=M+D

(SUBTRACT_1_FROM_OP2)
	@OP2
	M=M-1

(LOOP_AGAIN)
	@STOP_IF_OP2_IS_0
	0;JMP

(END)
	@END
	0; JMP