//Swap Without Temp
//Sayed Mahmudul Alam

struct SwapWithoutTemp {
	func swap(a : inout Int, b: inout Int) -> (Int, Int) {
		
		a = a + b
		b = a - b
		a = a - b
	
		return (a,b)
	}
}