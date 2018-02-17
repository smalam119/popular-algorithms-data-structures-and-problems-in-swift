//Count Space Recursion
//by Sayed Mahmudul Alam

struct CountSpace {
	
	func count(word: String) -> Int{
		if(word.count == 0 || word.count == 1) {
			return 0
		} else {
			let startIndex = word.index(word.startIndex, offsetBy: 1)
			let substring = word[startIndex...]
			return (word[word.startIndex] == " " ? 1 : 0) + count(word: String(substring))
		}
	}
}