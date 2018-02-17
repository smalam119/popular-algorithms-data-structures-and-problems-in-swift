//Palindrome Recursion
//by Sayed Mahmudul Alam

struct Palindrome {
	
	func isPalindrome(word: String) -> Bool {
		if(word.count == 0 || word.count == 1) {
			return true;
		} else if(word[word.startIndex] == word[word.index(before: word.endIndex)]) {
			let startIndex = word.index(word.startIndex, offsetBy: 1)
			let endIndex = word.index(word.endIndex, offsetBy: -1)
			let substring = word[startIndex..<endIndex]
			return isPalindrome(word: substring)
		}
	
		return false
	}

}