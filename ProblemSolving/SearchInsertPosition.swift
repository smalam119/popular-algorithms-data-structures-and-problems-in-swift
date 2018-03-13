//Sayed Mahmudul Alam
//Search Insert Position
//input = [1,3,5,6] target:2 
//output = 1

class SearchInsertPosition {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var min = Int.max 
        var position = 0
        
        if(target > nums.last!) {
            return nums.count
        }
        
        if(target < nums.first!) {
            return 0
        }
        
        for i in 0..<nums.count {
            
            var dif = abs(target - nums[i])
            
            if(dif == 0) {
                return i
            } else if (dif < min) {
                
                min = dif
                
                if(target > nums[i]) {
                    position = i + 1
                } else if(target < nums[i]){
                    position = i
                }
            }
        }
        return position
    }
}