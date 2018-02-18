//Reverse Word
//by Sayed Mahmudul Alam

struct ReverseWord {
	
	func reverseRecursion(word: String) -> String {
		if(word.count == 0 || word.count == 1) {
			return word
		} else {
			let startIndex = word.index(word.startIndex, offsetBy: 1)
			let substring = word[startIndex...]
			return reverseWordRecursion(word: String(describing: substring)) + String(describing:
								word[word.startIndex])
		}
	}
}
