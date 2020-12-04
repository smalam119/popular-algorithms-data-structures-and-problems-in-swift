// Selection sort
// Sayed Mahmudul Alam

private func swap(left: inout Int, with right: inout Int, array: inout [Int]) {
    let temp = array[left]
    array[left] = array[right]
    array[right] = temp
}

func selectionSort(array: inout [Int]) {
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

var numbers = [5,11,7,3,2]
print(selectionSort(array: &numbers))
