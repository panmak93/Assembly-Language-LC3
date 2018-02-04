	.ORIG x3000

	LEA R0, PROMPT	
	PUTS
	LEA R1, NAME

LOOP	
	GETC
	ADD R2, R0, #-10
	BRz DONE	
	
	STR R0, R1, #0
	ADD R1, R1, #1
	OUT

	BRnzp LOOP

DONE	
	LEA R0, HI
	PUTS
	LEA R0, NAME
	PUTS
	LEA R0, GOODDAY
	PUTS
	HALT

PROMPT	.STRINGZ "\nPlease enter your name (less than 100 characters long):"
HI	.STRINGZ "\nHi "
GOODDAY .STRINGZ ", have a good day."
NAME	.BLKW 100

	.END