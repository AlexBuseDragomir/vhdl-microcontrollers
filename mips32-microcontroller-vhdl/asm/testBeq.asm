rep:    lw $2, 0x40($0) # INW0=0xAAAA_AAAB
	lw $3, 0x44($0) # INW1=0x5555_5555
	add $4, $2, $3
	sub $5, $2, $3
	and $6, $2, $3
	or $7, $2, $3
	sw $2, 0x48($0)
	sw $3, 0x48($0)
	sw $4, 0x48($0)
	sw $5, 0x48($0)
	sw $6, 0x48($0)
	sw $7, 0x48($0)
	beq $2, $3, rep  # Reg $2 != Reg $3 => Saltul nu se face
	beq $0, $0, rep  # Reg $0 = Reg $0  => Saltul se face 
