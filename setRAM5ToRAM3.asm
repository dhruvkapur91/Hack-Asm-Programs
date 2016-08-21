// Set D to RAM[3]
// Set RAM[5] to D

(SET_D_TO_RAM3)
	@R3 // Select RAM3.
	D=M

(SET_RAM5_TO_D)
	@R5 // Select RAM5.
	M=D

(END)
	@END
	0; JMP
	
