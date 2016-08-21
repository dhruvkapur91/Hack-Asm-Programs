(START_FLIPPING)
// Flip RAM0 with RAM1

// temp = RAM0
// RAM0 = RAM1
// RAM1 = temp

// Set temp to RAM0
	@R0
	D=M
	@temp  // So temp has RAM0
	M=D

// Put RAM1 in D
	@R1
	D=M
// Put D in RAM0
	@R0
	M=D

// Put temp in D, which is RAM0
	@temp
	D=M

// Put D in RAM1
	@R1
	M=D

	@START_FLIPPING
	0;JMP
	
