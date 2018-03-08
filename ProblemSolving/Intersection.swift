//Sayed Mahmudul Alam
//Find intersection between two array

struct Intersection {
    
    func find(array1: [Int], array2: [Int]) -> [Int] {
        var set1 = Set<Int>()
        var set2 = Set<Int>()
        var result = Array<Int>()
        
        for i in array1 {
            set1.insert(i)
        }
        
        for j in array2 {
            if(set1.contains(j)) {
                set2.insert(j)
            }
        }
        
        for k in set2 {
            result.append(k)
        }
        
        return result
    }
}