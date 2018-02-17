//Fibonacci
//by Sayed Mahmudul Alam

struct Fibonacci {

	func getFibonacci(_ number: Int) -> Int {
		assert(number > 0 && number < 1000, "Must choose a number between 0 and 1000.")
		if number <= 2 {
			return 1
		} else {
			return getFibonacci(number - 1) + getFibonacci(number - 2)
		}
	}
}