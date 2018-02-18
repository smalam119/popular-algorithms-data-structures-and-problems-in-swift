//Link Queue
//by Sayed Mahmudul Alam

//TO DO: import DoubleEndedLinkedList.swift

public class LinkQueue {
	private var list: DoubleEndedLinkedList?
	
	init() {
		list = DoubleEndedLinkedList()
	}
	
	func enqueue(data: Int) {
		list!.inserLast(data: data)
	}
	
	func dequeue() {
		list!.deleteFirst()
	}
	
	func isEmpty() -> Bool{
		return (list!.isEmpty())
	}
	
	func displayQueue() {
		list!.displayList()
	}
}
