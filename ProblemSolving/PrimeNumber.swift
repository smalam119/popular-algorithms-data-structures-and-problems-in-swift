//Prime Number
//by Sayed Mahmudul Alam

struct PrimeNumber {

	func isPrimeNumber(number: Int) -> Bool {
		var i = 2
		while i < number {
			if number % i == 0 {
				return false
			}
			i += 1
		}
		return true
	}
}
