//Adding two arrays
//Sayed Mahmudul Alam
//input a = [1,2,3,4] b = [1,2]
//output c = [1,2,4,6]

struct AddingArrays {
    func add(array1: [Int], array2: [Int]) -> [Int] {
    
        var temp = [Int]()
        var diff = 0
        var sum = 0;
        
        if(array1.count > array2.count) {
            diff = array1.count - array2.count
            temp = fillUpArray(array: array2, n: diff)
            sum = arrayToInt(array: temp) + arrayToInt(array: array1)
        } else if(array2.count > array1.count) {
            diff = array2.count - array1.count
            temp = fillUpArray(array: array1, n: diff)
            sum = arrayToInt(array: temp) + arrayToInt(array: array2)
        } else {
            sum = arrayToInt(array: array1) + arrayToInt(array: array2)
        }
        
        return intToArray(number: &sum)
    }
    
    private func arrayToInt(array: [Int]) ->  Int {
        var myString = ""
        _ = array.map{ 
            myString = myString + "\($0)" 
        }
        let number = Int(myString)
        return number!
    }
    
    private func intToArray(number: inout Int) -> [Int] {
        var result = [Int]()
        var temp = 0
        
        while number != 0 {
            temp = number % 10
            result.append(temp)
            number = number / 10
        }
        
        return result.reversed()
        
    }
    
    private func fillUpArray(array: [Int], n: Int) -> [Int] {
        var result = [Int]()
        
        for _ in 0..<n {
            result.append(0)
        }
        
        for j in array {
            result.append(j)
        }
        
        return result
    }
}