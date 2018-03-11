//Sayed Mahmudul Alam
//Find the longest common prefix

class LongestCommonPrefix {
    func find(_ strs: [String]) -> String {
        
        var minLength = Int.max;
        var shortestString:String?
        var set = Set<Character>()
        
        for i in strs {
            if(i.characters.count < minLength) {
                minLength = i.characters.count
                shortestString = i
            }
        }
        
        if var shortestString = shortestString {
                var endIndex = shortestString.endIndex
                for str in strs {
                    while !shortestString.isEmpty && !str.hasPrefix(shortestString) {
                        endIndex = shortestString.index(before: endIndex)
                        shortestString = shortestString.substring(to: endIndex)
                    }
                }
                return shortestString
            } else {
                return ""
            }
        
    }
}