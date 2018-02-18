//Double Ended Linked List
//by Sayed Mahmudul Alam

//TO DO: import Link.swift

public class DoubleEndedLinkedList {
	private var first: Link?
	private var last: Link?
	
	init() {
		first = nil
		last = nil
	}
	
	func isEmpty() -> Bool {
		return first == nil
	}
	
	func inserLast(data: Int) {
		let newLink = Link(data: data)
		if(isEmpty()) {
			first = newLink
		} else {
			last!.next = newLink
		}
		last = newLink
	}
	
	func deleteFirst() {
		if(first!.next == nil) {
			last = nil
		}
		first = first!.next
	}
	
	func displayList() {
		var current = first
		
		if(current == nil) {
			print("List is empty")
		} else {
			while current != nil {
			print(current!.getData())
			current = current!.next
			}
		}
	}
}
