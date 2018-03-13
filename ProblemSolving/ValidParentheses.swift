//Sayed Mahmudul Alam
//Checking validity of Parentheses
//input = "[()]" output = true
//input = "([]" output = false

class ValidParentheses {
    func isValid(_ s: String) -> Bool {
        
        var temp = [Character]()
        
        for i in s {
            
            if(i == "(" || i == "{" || i == "[") {
                
                temp.append(i)
                
            } else if(i == "]") {
                
                if(temp.isEmpty || temp.last != "[") {
                    return false
                } else {
                    temp.removeLast()
                }
            } else if(i == "}") {
                
                if(temp.isEmpty || temp.last != "{") {
                    return false
                } else {
                    temp.removeLast()
                }
            } else if(i == ")") {
                
                if(temp.isEmpty || temp.last != "(") {
                    return false
                } else {
                    temp.removeLast()
                }
            }
        }
        
        return temp.isEmpty
        
    }
}