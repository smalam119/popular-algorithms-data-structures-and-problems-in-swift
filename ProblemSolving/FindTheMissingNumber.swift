//Sayed Mahmudul Alam
//Find the missing number in a sequence
//input = [1,2,4,5,3,6,8] output = 7

class FindTheMissingNumber {
    func find(array: [Int]) -> Int {
        var n = array.count
        var total = (n+1) * (n+2)/2
        
        for i in 0..<n {
            total -= array[i]
        }
        
        return total
    }
}