//Sayed Mahmudul Alam
//Find intergers

struct FindIntegers {
    
    //Find two interger that multiplies to a number
    func findTwoIntegers(multipliesTo number: Int, array: [Int]) -> (Int, Int)? {
        for i in 0..<array.count {
            var k = 0
            var l = 0
            
            for i in array {
                if(i <= 0) {
                    print("must not contain a zero")
                    return nil
                }
            }
            
            if(number % array[i] == 0) {
                k = number / array[i]
                l = array[i]
            }
            for j in i..<array.count{
                print(array[j])
                if(array[j] == k) {
                    return (k, l)
                }
            }
        }
        
        return nil
    }
    
    //Find two intergers that summed up to a number
    func findTwoIntegersBruteForce(summedUpTo number: Int, array: [Int]) -> (Int, Int)? {
        for i in 0..<array.count {
            let dif = number - array[i]
            for j in i+1..<array.count{
                if(array[j] == dif) {
                    return (i, j)
                }
            }
        }
        
        return nil
    }
    
    func findTwoIntegers(summedUpTo number: Int, array: [Int]) -> (Int, Int)? {
        var map = [Int: Int]()
        
        for i in 0..<array.count {
            let dif = number - array[i]
            
            if let val = map[dif] {
                return (val,i)
            }
            
            map[array[i]] = i
        }
        
        return nil
    }
    
}