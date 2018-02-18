//Link Stack
//by Sayed Mahmudul Alam

//TO DO: import LinkedList.swift

public class LinkStack {
	private var list: LinkedList?
	
	init() {
		list = LinkedList()
	}
	
	func push(data: Int) {
		list!.insertFirst(data: data)
	}
	
	func pop() {
		list!.deleteFirst()
	}
	
	func peek() -> Int? {
		if list!.isEmpty() {
			return nil
		} else {
			return list!.first!.getData()
		}
	}
	
	func displayStack() {
		list!.displayList()
	}
}
