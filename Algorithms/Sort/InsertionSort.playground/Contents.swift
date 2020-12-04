// Insertion Sort
// Sayed Mahmudul Alam

func insertionSort(array: inout [Int]) {
    
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

var numbers = [4,8,5,10,12]
print(insertionSort(array: &numbers))
