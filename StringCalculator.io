StringCalculator := Object clone do (
	add := method(numbers,
		delim := ","
		if (numbers exSlice(0,2) == "//",
			delim = numbers at(2) asCharacter
			numbers = numbers exSlice(4)
		)
		nums := numbers asMutable replaceSeq("\n", delim) split(delim)
		if (nums size == 0 or nums size == 1, return 0)
		return nums map(asNumber) sum()
	)
)
