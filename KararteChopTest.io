KarateChopTest := UnitTest clone do(
	kc := KarateChop clone
	// test that it is ready
	assertNotNil(kc)
	
	empty := list()
	single := list(1)
	triple := list(1,3,5)
	
	// testing an empty list
	assertEquals(-1, kc chop(3, empty))
	// testing a list with a single value
	assertEquals(-1, kc chop(3, single))
	assertEquals(0, kc chop(1, single))
	
	// testing a list with 3 values
	assertEquals(0, kc chop(1, triple))
	assertEquals(1, kc chop(3, triple))
	assertEquals(2, kc chop(5, triple))
	
	assertEquals(-1, kc chop(0, triple))
	assertEquals(-1, kc chop(2, triple))
	assertEquals(-1, kc chop(4, triple))
	assertEquals(-1, kc chop(6, triple))
)