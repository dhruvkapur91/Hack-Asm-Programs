	@10  	// A instruction - puts 10 in register A.
	D=A 	// C instruction 

(END)
	@END	// Put address of label and put that in A.
	0  ;JMP // Jump back to RAM[A], unconditionally...
