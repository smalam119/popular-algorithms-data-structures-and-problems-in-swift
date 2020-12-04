//Linear Search
//by Sayed Mahmudul Alam

func linearSearch(key: Int, array: [Int]) -> Int {
    for i in 0..<array.count {
        if (key == array[i]) {
            return i
        }
    }
    return -1
}

let numbers = [5,9,2,10,6]
print(linearSearch(key: 9, array: numbers))
