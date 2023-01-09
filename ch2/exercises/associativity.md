let add x y = x + y

	add 5 1
		produces int
	add 5
		produces int -> int	
	(add 5) 1
		produces int
	add (5 1)
		error: (5 1) is not an expression
