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
}