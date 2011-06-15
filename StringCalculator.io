StringCalculator := Object clone do (
  add := method(numbers,
    
    nums := numbers asMutable replaceSeq("\n", ",") split(",")
    if (nums size == 0 or nums size == 1, return 0)
    
    return nums map(asNumber) sum()
  )
)
