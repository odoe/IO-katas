// modified kata derived from python version
// http://www.protocolostomy.com/2009/12/13/python-code-kata-2-karate-chop-binary-search/
KarateChop := Object clone do(
	chop := method(needle, haystack,
		if (haystack == nil or haystack size == 0, return -1)
		if (haystack at(0) == needle, return 0)
		
		lo := haystack at(0)
		hi := haystack size
		check := 0
		mid := -1
		found := false
		while(lo < hi and check != mid,
			check = mid
			mid = ((lo+hi)/2) floor
			midval := haystack at(mid)
			if (needle < midval) then(hi = mid) elseif (needle > midval) then(lo = mid) else(found = true, return mid)
		)
		
		if (found, return mid, return -1)
	)
)