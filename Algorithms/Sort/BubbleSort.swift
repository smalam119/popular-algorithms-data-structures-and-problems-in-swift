//Bubble Sort
//by Sayed Mahmudul Alam

struct BubbleSort {
	
    private func swap(left: Int, with right: Int, array: inout [Int]) {
        let temp = array[left]
        array[left] = array[right]
        array[right] = temp
    }

    func sort(array: inout [Int]) -> [Int] {
        for i in (0..<array.count).reversed() {
            for j in 0..<i {
                if (array[j] > array[j + 1]) {
                    swap(left: j, with: j + 1, array: &array)
                }
            }
        }
        return array
    }
}
