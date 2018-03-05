struct PrintPatterns {
    
    func printPatternA(n: Int) {
        for i in 0..<n {
            for j in 0...i {
                print("* ", terminator: "")
            }
            print()
        }
    }
    
    func printPatternB(n: Int) {
        var l = 2*n - 2
        
        for i in 0..<n {
            
            for j in 0..<l {
                print(" ", terminator: "")
            }
            
            l = l - 2
            
            for k in 0...i {
                print("* ", terminator: "")
            }
            
            print("")
        }
    }
    
    func printPyramid(n: Int) {
        
        for i in 0..<n {
            
            for j in 0..<n - i {
                print(" ", terminator: "")
            }
            
            for k in 0...i {
                print("* ", terminator: "")
            }
            
            print("")
        }
    }
}

var printPatterns = PrintPatterns()
printPatterns.printPyramid(n:7)