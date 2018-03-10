//Sayed Mahmudul Alam
//Longest Substring Without Repeating Characters

class LongestSub {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var tempSet = Set<Character>()
        var tempArray = [Character]()
        var count = 0
        var countArray = [Int]()
        
        
        for char in s {
            tempArray.append(char)
        }
        
        if(tempArray.count == 1) {
            return 1
        }
        
        for i in 0..<tempArray.count {
            
            for j in i..<tempArray.count {
                if(tempSet.insert(tempArray[j]).0) {
                    count += 1
                } else {
                    countArray.append(count)
                    count = 0
                    tempSet.removeAll()
                    break
                }
            }
        }
        return getLargest(array: countArray)
    }
    
    func getLargest(array: [Int]) -> Int {
        
        var largest = 0
        
        for i in array {
            if(i > largest) {
                largest = i
            }
        }
        
        return largest
        
    }
}