//Stack Array
//Sayed Mahmudul Alam

struct StackArray {
	
	private var top = -1
	private var stackSize: Int?
	private var array: Array<Int?>
	
	init(stackSize: Int) {
		self.stackSize = stackSize
		array = Array(repeating: nil, count: stackSize)
		
		for i in 0..<stackSize {
			array[i] = -1
		}
	}
	
	mutating func push(element: Int) {
		if(top < stackSize! ) {
			top += 1
			array[top] = element
		} else {
			print("Stack overflow!!!")
		}
	}
	
	mutating func pop() -> Int {
		if(top >= 0) {
			let temp = array[top]
			array[top] = -1
			top -= 1
			return temp!
		} else {
			print("Stack underflow")
			return -1
		}
	}
	
	func getTop() -> Int {
		return array[top]!
	}
	
	func isEmpty() -> Bool {
		return top == -1
	}
}
