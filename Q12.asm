	.ORIG x3000

	NOT R2, R2
	ADD R2, R2, #1	; 2's Complement conversion into negative
	ADD R0, R1, R2	; Compare R1 & R2
	BRz DONE
	BRp Pos
	BRn Neg

Pos	NOT R3, R0
	AND R0, R0, R3	; Reset R0 to zero
	AND R3, R3, R0	; Reset R3 to zero 	
	ADD R0, R0, #1	; Set R0 to 1
	BRnzp DONE

Neg	NOT R3, R0
	AND R0, R0, R3	; Reset R0 to zero
	AND R3, R3, R0	; Reset R3 to zero 
	ADD R0, R0, #-1	; Set R0 to -1

DONE	HALT

	.END