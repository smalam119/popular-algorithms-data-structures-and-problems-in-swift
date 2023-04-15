// Author: Sayed Mahmudul Alam
// Source: LeetCode-509: https://www.geeksforgeeks.org/introduction-to-recursion-data-structure-and-algorithm-tutorials/
// Solution Ref: https://www.section.io/engineering-education/introduction-to-dynamic-programming/#:~:text=Dynamic%20Programming%20(DP)%20is%20an,optimal%20solution%20to%20its%20subproblems.
// Example Input: n = 3
// Output: 2
// Explanation: F(3) = F(2) + F(1) = 1 + 1 = 2.

class RecursiveSolution {
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

class DPSolution {
    func fib(_ n: Int) -> Int {

        guard n > 1 else {
            return n
        }

        // The first two values of the series are 0 and 1
        var first = 0
        var second = 1

        // Since first two values are known, the loops can be started from 2
        for i in 2...n {

            // current term is the sum of previous two values
            let term = first + second

            // Now first term is second term and second term is the current term
            first = second
            second = term
        }

        return second
    }
}
