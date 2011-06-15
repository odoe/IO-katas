StringCalculator := Object clone do (
  add := method(numbers,
    
    nums := numbers asMutable replaceSeq("\n", ",") split(",")
    if (nums size == 0, return 0)
    if (nums size == 1, return 0)
    
    nums = nums map(asNumber)  
    
    return nums sum()
  )
)
