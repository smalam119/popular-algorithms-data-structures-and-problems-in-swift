//Doubly Linked List
//by Sayed Mahmudul Alam

public class Link {
	var data: Int?
	var next: Link?
	var previous: Link?
	
	init(data: Int) {
		self.data = data
		self.next = nil
		self.previous = nil
	}
	
	func getData() -> Int {
		return data!
	}
}