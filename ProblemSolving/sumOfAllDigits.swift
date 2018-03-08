//Sum of All Digits
//Sayed Mahmudul Alam

struct sumOfAllDigits {
    private var sum = 0
    
    mutating func calculate(number: Int) -> Int {
        if number == 0 {
            return sum
        } else {
            sum += (number % 10)
            calculate(number: number / 10)
        }
        
        return sum
    }

    func getSum(number: inout Int) -> Int {
    	var sum = 0
    
    	while number != 0 {
        	sum += number % 10
        	number = number / 10
    	}
    
    	return sum
	}
}