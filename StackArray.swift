//Stack
//by Sayed Mahmudul Alam

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
	
	mutating func pop() {
		if(top >= 0) {
			array[top] = -1
			top -= 1
		} else {
			print("Stack underflow")
		}
	}
	
	func getTop() -> Int {
		return top
	}
}