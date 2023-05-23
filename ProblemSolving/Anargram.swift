// Source: LeetCode-242: https://leetcode.com/problems/valid-anagram/description/
// Example Input: s = "anagram", t = "nagaram"
// Output: true

struct Anargram {
	func isAnagram(_ s: String, _ t: String) -> Bool {
		
		guard s.count == t.count else { return false }
		
		var map = [Character: Int]()
		
		for char in s {
			map[char, default: 0] += 1
		}
		
		for char in t {
			if let count = map[char], count > 0 {
				map[char] = count - 1
			} else {
				return false
			}
		}
		return true
	}
}
