//Sayed Mahmudul Alam
//Remove duplicates from a array

class RemoveDuplicates {
    func remove(_ nums: inout [Int]) -> Int {
        var tempSet = Set<Int>()
        
        for (i,num) in nums.enumerated().reversed() {
            if(!tempSet.insert(nums[i]).0) {
                nums.remove(at: i)
            }
        }
        
        return nums.count
    }
}