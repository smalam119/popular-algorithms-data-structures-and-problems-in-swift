// Merge Sort
//by Sayed Mahmudul Alam

struct MergeSort{
	
	var size: Int?
	var temp: Array<Int?>
	var array: Array<Int?>
	
	init(size: Int, array: Array<Int>) {
		self.size = size
		self.array = array
		temp = Array(repeating: nil, count: size)
	}
	
	mutating func sort() -> Array<Int?> {
		mergeSort(low: 0, high: size! - 1)
		return array
	}
	
	mutating func mergeSort(low: Int, high: Int) {
		if low < high {
			
			let middle = low + (high - low) / 2
			mergeSort(low: low,high: middle)
			mergeSort(low: middle + 1, high: high)
			merge(low: low, middle: middle, high: high)
		}
	}
	
	mutating func merge(low: Int, middle: Int, high: Int) {
		
		for i in low...high {
			temp[i] = array[i]
		}
		
		var i = low
		var j = middle + 1
		var k = low
		
		while(i <= middle && j <= high) {
			
			if temp[i]! <= temp[j]! {
				array[k] = temp[i]
				i += 1
			} else {
				array[k] = temp[j]
				j += 1
			}
			
			k += 1
		}
		
		while(i <= middle) {
			array[k] = temp[i]
			k += 1
			i += 1
		}
	}
}