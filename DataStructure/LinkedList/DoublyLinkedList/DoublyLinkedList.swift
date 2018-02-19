//Doubly Linked List
//by Sayed Mahmudul Alam

//TO DO: import Link.swift

public class DoublyLinkedList {
	var first: Link?
	var last: Link?
	
	init() {
		first = nil
		last = nil
	}
	
	func isEmpty() -> Bool {
		return (first == nil)
	}
	
	func insertFirst(data: Int) {
		let link = Link(data:data)
		
		if(isEmpty()) {
			last = link
		} else {
			first!.previous = link
		}
		
		link.next = first
		first = link
	}
	
	func insertLast(data: Int) {
		let link = Link(data:data)
		
		if(isEmpty()) {
			first = link
		} else {
			last!.next = link
		}
		
		link.previous = last
		last = link
	}
	
	func insertAfter(key: Int, data: Int) -> Bool {
		guard var current = first else {
			print("list is empty!!")
			return false
		}
		
		while(current.getData() != key) {
			if let next = current.next {
				current = next
			} else {
				print("key not found")
				return false
			}
		}
		
		let link = Link(data: data)
		
		if(current === last) {
			link.next = nil
			last = link
		} else {
			link.next = current.next
			current.next!.previous = link
		}
		
		link.previous = current
		current.next = link
		return true
	}
	
	func deleteFirst() -> Int? {
		guard let current = first else {
			return nil
		}
		
		if(first!.next == nil) {
			last = nil
		} else {
			first!.next!.previous = nil
		}
		
		first = first!.next
		return current.getData()
	}
	
	func deleteLast() -> Int? {
		guard let current = last else {
			return nil
		}
		
		if(first!.next == nil) {
			first = nil
		} else {
			last!.previous!.next = nil
		}
		
		last = last!.previous
		return current.getData()
	}
	
	func delete(key: Int) -> Int? {
		guard var current = first else {
			print("list is empty!!")
			return nil
		}
		
		while(current.getData() != key) {
			if let next = current.next {
				current = next
			} else {
				print("key not found")
				return nil
			}
		}
		
		if(current === first) {
			first = current.next
		} else {
			current.previous!.next = current.next
		}
		
		if(current === last) {
			last = current.previous
		} else {
			current.next!.previous = current.previous
		}
		
		return current.getData()
	}
	
	func displayForward() {
		var current = first
		
		if(current == nil) {
			print("list is empty!!")
		} else {
			while current != nil {
			print(current!.getData())
			current = current!.next
			}
		}
	}
	
	func displayBackward() {
		var current = last
		
		if(current == nil) {
			print("List is empty")
		} else {
			while(current != nil) {
				print(current!.getData())
				current = current!.previous
			}
		}
	}
}