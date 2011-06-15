StringCalculatorTest := UnitTest clone do(
  calc := StringCalculator clone
  
  // should not be null
  assertNotNil(calc)
  
  // should handle empty string
  assertEquals(0, calc add(""))
  // should handle single value in string
  assertEquals(0, calc add("1"))

  // should sum numbers
  assertEquals(2, calc add("1,1"))
  assertEquals(3, calc add("1,1,1"))
  assertEquals(10, calc add("2,2,2,2,2"))

  // should handle new lines
  assertEquals(2, calc add("1\n1"))
  assertEquals(3, calc add("1\n1,1"))

  // should handle different delimiters
  // assertEquals(2, calc add("//;\n1;1"))
)
