//
// if R0 > 0
// 	R1 = 1
// else
//	R1 = 0

// first check if R0 is greater than 0.
	// Since we have no direct way to do this
	// We should put it in D

// If its greater then set 1 in R1

// Else set 0 in R1

// Put R0 in D.
	@R0
	D=M
	
// Check D is greater than 0, if so jump to R1 to set 1.
	@SET_R1_1
	D; JGT

(SET_R1_0)
	@R1
	M=0			

(SET_R1_1)
	@R1
	M=1

(END)
	@END
	0;JMP
