//Singly Linked List
//by Sayed Mahmudul Alam

public class Link {
	var data: Int?
	var next: Link?
	
	init(data: Int) {
		self.data = data
		next = nil
	}
	
	func getData() -> Int {
		return data!
	}
}