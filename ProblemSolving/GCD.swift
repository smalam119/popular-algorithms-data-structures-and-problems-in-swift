//Sayed Mahmudul Alam
//Greatest Common Divisor

struct GCD {
    func getGCD(a: Int, b: Int) -> Int {
        let r = a % b
        if r != 0 {
            return getGCD(a: b, b: r)
        } else {
            return b
        }
    }
}