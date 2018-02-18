//Array Rotate
//by Sayed Mahmudul Alam

struct ArrayRotate {
	
	func rotate(array: [Int], numberOfRotation: Int) -> [Int] {
		var tempArray = [Int]()
		
		for i in numberOfRotation...array.count - 1 {
			tempArray.append(array[i])
		}
		
		for i in 0..<numberOfRotation {
			tempArray.append(array[i])
		}
		
		return tempArray
	}
}
