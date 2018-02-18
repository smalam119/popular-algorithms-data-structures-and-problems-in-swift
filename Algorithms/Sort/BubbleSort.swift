//Bubble Sort
//by Sayed Mahmudul Alam

struct BubbleSort {
	
	private func swap(left: inout Int, with right: inout Int, array: inout [Int]) {
		let temp = array[left]
		array[left] = array[right]
		array[right] = temp
	}
	
	func sort(array: inout [Int]) {
		for out in stride(from: array.count - 1, to: 1, by: -1) {
			for inn in stride(from: 0, to: out, by: 1) {
				var m = inn
				var n = inn + 1
				if array[m] > array[n] {
					swap(left: &m, with: &n, array: &array)
				}
			}
		}
	}
}