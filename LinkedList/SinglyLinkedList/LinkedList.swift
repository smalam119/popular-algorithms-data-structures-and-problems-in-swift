//Singly Linked List
//by Sayed Mahmudul Alam

//TO DO: import Link.swift

public class LinkedList {
	var first: Link?
	
	init() {
		first = nil
	}
	
	func insertFirst(data: Int) {
		let newLink = Link(data: data)
		newLink.next = first
		first = newLink
	}
	
	func deleteFirst() {
		if let temp = first {
			first = first!.next
			print("\(temp.data!) is deleted")
		} else {
			print("Cannot delete!! List is empty!!")
		}
	}
	
	func find(key: Int) -> Link? {
		guard var current = first else {
			return nil
		}
		
		while current.getData() != key {
			if current.next == nil {
				return nil
			} else {
				current = current.next!
			}
		}
		
		return current
	}
	
	func delete(key: Int) -> Link?{
		guard var current = first, var previous = first else {
			print("List is empty!!")
			return nil
		}
		
		while current.getData() != key {
			if current.next == nil {
				print(current.getData())
				print("called")
				return nil
			}
			else {
				previous = current
				current = current.next!
			}
		}
		
		if(current === first) {
			first = first!.next
		} else {
			previous.next = current.next
		}
		
		return current
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
	
	func isEmpty() -> Bool {
		return (first == nil)
	}
	
	func insertSorted(data: Int) {
		
		let link = Link(data: data)
		var previous: Link? = nil
		var current = first
		
		while(current != nil && link.data! > current!.data!) {
			previous = current
			current = current!.next
		}
		
		if(previous == nil) {
			first = link
		} else {
			previous!.next = link
		}
		
		link.next = current
	}
}
