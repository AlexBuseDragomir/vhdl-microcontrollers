add $0, $0, $0           # dummy operation
lw $2, 0x40($0)  	# load INW0(a) into register 2 
lw $3, 0X44($0)     	# load INW1(b) into register 3
add $4, $2, $2 		# $4 = 2*a
add $5, $4, $2		# $5 = 3*a
add $6, $3, $3		# $6 = 2*b
sub $7, $5, $6		# $7 = 3a - 2b
sw $7, 0x48($0)	        # get result
