//Insertion Sort
//by Sayed Mahmudul Alam

struct InsertionSort {
	
	func sort(array: inout [Int]) {
		
		var inn = 0
		
		for out in 1..<array.count {
			let temp = array[out]
			inn = out - 1
			
			while(inn >= 0 && array[inn] > temp) {
				array[inn + 1] = array[inn]
				inn -= 1
			}
			array[inn + 1] = temp
		} 
	}
}