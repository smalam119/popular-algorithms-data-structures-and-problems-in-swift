// Author: Sayed Mahmudul Alam
// Source: LeetCode-509: https://www.geeksforgeeks.org/introduction-to-recursion-data-structure-and-algorithm-tutorials/
// Solution Ref: https://www.youtube.com/watch?v=YPTqKIgVk-k&ab_channel=NeetCode
// Example Input: n = 3
// Output: 2
// Explanation: F(3) = F(2) + F(1) = 1 + 1 = 2.

class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }

        if n == 1 || n == 2 {
            return 1
        }

        return fib(n-1) + fib(n-2)
    }
}
