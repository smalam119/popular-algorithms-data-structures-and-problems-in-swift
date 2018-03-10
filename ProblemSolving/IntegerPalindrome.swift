//Sayed Mahmudul Alam
//Integer Palindrome

class IntegerPalindrome {
    func isPalindrome(_ x: Int) -> Bool {
        
        var temp = x
        return reverse(temp) == x
    }
    
    func reverse(_ number: Int) -> Int {
		var reverseNumber = 0
		var tempNumber = number
		
		while tempNumber != 0 {
			reverseNumber = reverseNumber * 10 + tempNumber % 10
			tempNumber = tempNumber / 10
		} 
		
		return reverseNumber
	}
}