//Array Rotate
//by Sayed Mahmudul Alam

struct ArrayRotate {
	
	func rotate(array: [Int], numberOfRotation: Int) -> [Int] {
		var tempArray = [Int]()
		let r = numberOfRotation % array.count
		
		for i in r..<array.count {
			tempArray.append(array[i])
		}
		
		for i in 0..<r {
			tempArray.append(array[i])
		}
		
		return tempArray
	}
}
