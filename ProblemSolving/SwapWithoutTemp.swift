//Swap Without Temp
//Sayed Mahmudul Alam

struct SwapWithoutTemp {
	func swapWithoutTemp(a : Int, b: Int) -> (Int, Int) {
		var tempA = a
		var tempB = b
		
		tempA = tempA + tempB
		tempB = tempA - tempB
		tempA = tempA - tempB
	
		return (tempA,tempB)
	}
}