// Author: Sayed Mahmudul Alam
// Source: LeetCode-189: https://leetcode.com/problems/rotate-array/description/
// Example Input: nums = [1,2,3,4,5,6,7], k = 3
// Output: [5,6,7,1,2,3,4]

struct ArrayRotate {
    func rotate(array: [Int], numberOfRotation: Int) -> [Int] {var tempArray = [Int]()
        let r = numberOfRotation % array.count
		
	for i in r..<array.count {
	    tempArray.append(array[i])
	}
		
	for i in 0..<r {
	    tempArray.append(array[i])
	}
		
	return tempArray
     }
}

class ArrayRotateInPlace {
	
    func rotate(_ nums: inout [Int], _ k: Int) {

        let r = k % nums.count
        
        reverse(&nums, from: 0, to: nums.count - 1)
        reverse(&nums, from: 0, to: r - 1)
        reverse(&nums, from: r, to: nums.count - 1)
    }

    func reverse(_ nums: inout [Int], from start: Int, to end: Int) {
        var s = start
        var e = end

        while(s < e) {
            let temp = nums[s]
            nums[s] = nums[e]
            nums[e] = temp

            s += 1
            e -= 1
        }
    }
}
