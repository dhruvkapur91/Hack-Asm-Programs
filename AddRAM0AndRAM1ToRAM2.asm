// Put RAM[0] in D.
// Select RAM[1] and increment D.
// Select RAM[2] and store D.

(PUT_RAM_0_IN_D)
	@R0
	D=M

(SELECT_RAM_1)
	@R1

(INCREMENT_D_WITH_M)
	D=D+M // comp instruction

(STORE_D_IN_RAM_2)
	@R2
	M=D

(END)
	@END
	0; JMP
