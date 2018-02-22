//Queue Using two stacks
//by Sayed Mahmudul Alam

struct QueueUsingTwoStacks {
	private var stackSize: Int?
	
	init(stackSize: Int) {
		self.stackSize = stackSize
	}
	
	var stackOne = StackArray(stackSize: 5)
	var stackTwo = StackArray(stackSize: 5)
	
	mutating func enqueue(element: Int) {
		stackOne.push(element: element)
	}
	
	mutating func dequeue() -> Int {
		while(!stackOne.isEmpty()) {
			stackTwo.push(element: stackOne.pop())
		}
		return stackTwo.pop()
	}
	
}