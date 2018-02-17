struct PrimeNumber {
	
	func isPrimeNumber(number: Int) -> Bool {
		var i = 2
		repeat {
			if number % i == 0 {
				return false
			}
			i += 1
		} while i < number
		return true
	}
}