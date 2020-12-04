// Binary Search
// Sayed Mahmudul Alam

func binarySearch(key: Int, array: [Int], start: Int, end: Int) -> Int {
    let mid = start + (end - start) / 2
    if(start < end) {
        if(key > array[mid]) {
            return binarySearch(key: key,array: array,start: mid + 1,end: end)
        } else if(key < array[mid]) {
            return binarySearch(key: key,array: array ,start: start,end: mid)
        } else {
            return mid
        }
    }
    
    return -1
}

let numbers = [1,5,7,8,12]
print(binarySearch(key: 7, array: numbers, start: 0, end: numbers.count))
