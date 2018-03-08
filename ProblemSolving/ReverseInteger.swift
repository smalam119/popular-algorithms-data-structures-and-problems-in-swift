//Reverse Integar
//by Sayed Mahmudul Alam

struct ReverseInteger {
	
	func reverse(number: Int) -> Int {
		var reverseNumber = 0
		var number = number
		
		while number != 0 {
			reverseNumber = reverseNumber * 10 + number % 10
			number = number / 10
		} 
		
		return reverseNumber
	}
}