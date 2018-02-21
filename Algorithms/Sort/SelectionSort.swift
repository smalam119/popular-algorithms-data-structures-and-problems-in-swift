//Selection sort
//by Sayed Mahmudul Alam

struct SelectionSort {
	
	private func swap(left: inout Int, with right: inout Int, array: inout [Int]) {
		let temp = array[left]
		array[left] = array[right]
		array[right] = temp
	}
	
	func sort(array: inout [Int]) {
		var min = 0
		
		for var out in 0..<array.count - 1 {
			min = out
			
			for inn in out + 1..<array.count {
				if array[inn] < array[min] {
					min = inn
				}
			}
			swap(left: &out, with: &min, array: &array)
		}
	}
}