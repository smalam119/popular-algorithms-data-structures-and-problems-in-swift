// Source: LeetCode-20: https://leetcode.com/problems/valid-parentheses/description/
// Example Input: s = "()[]{}"
// Output: true

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

    func isValidShort(_ s: String) -> Bool {

        guard s.count % 2 == 0 else { return false }

        var stack: [Character] = []

        for item in s {
            switch item {
                case "(": stack.append(")")
                case "{": stack.append("}")
                case "[": stack.append("]")
                default:
                if stack.isEmpty || stack.removeLast() != item {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}
