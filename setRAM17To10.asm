//
//Set 10 in D.
//Select RAM17
//Set M to D.
//

(SET_10_IN_D)
	@10 // Set 10 in A.
	D=A // Set 10 in D.

(SELECT_RAM_17)
	@17

(SET_M_TO_D)
	M=D
	
(END)
	@END
	0; JMP
