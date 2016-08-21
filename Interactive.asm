// interactive
// on any key press - change screen to black.
// on key up - change screen to white.

(CHECK_AND_ROUTE_ON_KEY_STATUS)
	@KBD
	D=M
	@MAKE_SCREEN_WHITE
	D;JEQ
	@MAKE_SCREEN_BLACK
	0;JMP

(MAKE_SCREEN_BLACK)
	@color
	M=-1
	@MAKE_SCREEN_ONE_COLOR
	0;JMP

(MAKE_SCREEN_WHITE)
	@color
	M=0
	@MAKE_SCREEN_ONE_COLOR
	0;JMP

(MAKE_SCREEN_ONE_COLOR)

	(INITIALIZE_COUNTER_TO_0)
	@counter
	M=0

	(INITIALIZE_ADDR_TO_SCREEN)
	@SCREEN
	D=A
	@addr
	M=D

	(INITIALIZE_STOP_ADDRESS)
	@8192
	D=A
	@stop_address
	M=D
	
	(START_LOOP)

	(CHECK_IF_COUNTER_IS_MORE_THAN_STOP_ADDRESS)
		@counter
		D=M
		@stop_address
		D=D-M
		@CHECK_AGAIN
		D;JGE

	(ADD_COUNTER_TO_ADDR_AND_MARK_IT_COLOR)
		@counter
		D=M
		@addr
		A=D+M
		D=A
		@updatedAddress
		M=D
		@color
		D=M
		@updatedAddress
		A=M
		M=D

	(INCREMENT_COUNTER_AND_LOOP)
		@counter
		M=M+1
		@CHECK_IF_COUNTER_IS_MORE_THAN_STOP_ADDRESS
		0;JMP
	
(CHECK_AGAIN)
	@CHECK_AND_ROUTE_ON_KEY_STATUS
	0;JMP
