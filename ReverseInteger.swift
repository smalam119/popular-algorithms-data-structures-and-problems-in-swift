//Reverse Integar
//by Sayed Mahmudul Alam

struct ReverseInteger {
	
	func reverse(number: Int) -> Int {
		var reverseNumber = 0
		var number = number
		
		repeat {
			reverseNumber = reverseNumber * 10
			reverseNumber = reverseNumber + number % 10
			number = number / 10
		} while number != 0
		
		return reverseNumber
	}
}