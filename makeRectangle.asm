// Make a rectangle of dimension : RAM[0] x 16 pixels

// Recap
// 1 word is 16 pixels.
// So we draw it for one word.
// Next we add 32 to our row...	
// And start on drawing the next row
// ofcourse till RAM[0]

(SET_N_TO_RAM_0)
	@R0
	D=M
	@n
	M=D

(INITIALIZE_COUNTER_TO_0)
	@counter
	M=0

(INITIALIZE_INDEX_TO_SCREEN)
	@SCREEN
	D=A
	@index
	M=D

(INITIALIZE_SKIP_WORDS_CONSTANT)
	@32
	D=A
	@skip
	M=D

(STOP_IF_COUNTER_IS_MORE_THAN_N)
	@counter
	D=M
	@n
	D=D-M
	@END
	D;JGT

(INCREMENT_INDEX_WITH_COUNTER)
	@counter
	D=M
	@index
	D=D+M

(DRAW_A_WORD)
	@index
	A=M
	M=-1

(ADD_SKIP_TO_INDEX)
	@skip
	D=M
	@index
	M=D+M

(INCREMENT_COUNTER_AND_LOOP)
	@counter
	M=M+1
	@STOP_IF_COUNTER_IS_MORE_THAN_N
	0;JMP
	
(END)
	@END
	0;JMP



