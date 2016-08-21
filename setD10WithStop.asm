	@10  	// A instruction - puts 10 in register A.
	D=A 	// C instruction 

	@2 	// Select RAM[2] -- which is where there is no instruction
	0  ;JMP // Jump back to RAM[A] which is 2, unconditionally...
