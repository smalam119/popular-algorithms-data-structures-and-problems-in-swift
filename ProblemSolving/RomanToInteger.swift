//Sayed Mahmudul Alam
//Roman to Integer

class RomanToInteger {
    func convert(_ s: String) -> Int {
        
        var dic: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var tempArray = [Character]()
        var output = 0
        
        for char in s {
            tempArray.append(char)
        }
        
        for i in 0..<tempArray.count {
            
            if(i == tempArray.count - 1) {
                output += dic[tempArray[i]]!
            } else if(dic[tempArray[i]]! > dic[tempArray[i + 1]]! || dic[tempArray[i]]! == dic[tempArray[i + 1]]!) {
                output += dic[tempArray[i]]!
            } else if(dic[tempArray[i]]! < dic[tempArray[i + 1]]!) {
                output -= dic[tempArray[i]]!
            }
        }
        
        return output
    }
}