//Reverse Integar
//by Sayed Mahmudul Alam

struct ReverseInteger {
	
	func reverse(number: Int) -> Int {
		var reverseNumber = 0
		var tempNumber = number
		
		while tempNumber != 0 {
			reverseNumber = reverseNumber * 10 + tempNumber % 10
			tempNumber = tempNumber / 10
		} 
		
		return reverseNumber
	}
}