//Anargram
//by Sayed Mahmudul Alam

struct Anargram {
	
	func isAnargram(word1: String, word2: String) -> Bool {
		var word1UnicodeSum = 0
		var word2UnicodeSum = 0
		
		if(word1.count != word2.count) {
			return false
		}
		
		for i in 0..<word1.count {
			let c = word1.index(word1.startIndex, offsetBy: i)
			let cUniCode = String(describing: c).unicodeScalars
			let asciiValue = Int(cUniCode[cUniCode.startIndex].value)
			word1UnicodeSum += asciiValue
		}
		
		for i in 0..<word2.count {
			let c = word2.index(word2.startIndex, offsetBy: i)
			let cUniCode = String(describing: c).unicodeScalars
			let asciiValue = Int(cUniCode[cUniCode.startIndex].value)
			word2UnicodeSum += asciiValue
		}
		
		if(word1UnicodeSum == word2UnicodeSum) {
			return true
		} else {
			return false
		}
	}
}
