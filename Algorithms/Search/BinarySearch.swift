//Binary Search
//by Sayed Mahmudul Alam

struct BinarySearch {
	
	func search(key: Int, array: [Int], start: Int, end: Int) -> Int {
		var mid = start + (end - start) / 2
		if(start < end) {
			if(key > array[mid]) {
				return search(key: key,array: array,start: mid + 1,end: end)
			} else if(key < array[mid]) {
				return search(key: key,array: array ,start: start,end: mid)
			} else {
				return mid
			}
		}
		
		return -1
	}
	
}
