// Selection sort
// Sayed Mahmudul Alam

import Foundation

struct SelectionSortAlt {
    
    private func findSmallest(array: [Int]) -> Int  {
        var smallest = array[0]
        var smallestIndex = 0
        
        for i in (0..<array.count) {
            if array[i] < smallest {
                smallest = array[i]
                smallestIndex = i
            }
        }
        return smallestIndex
    }

    func sort(array: inout [Int]) -> [Int] {
        var sorted = [Int]()
        for i in array {
            let smallestIndex = findSmallest(array: array)
            sorted.append(array[smallestIndex])
            array.remove(at: smallestIndex)
        }
        return sorted
    }
}

var selectionSort = SelectionSortAlt()
var numbers = [5,14,7,2,4]
print(selectionSort.sort(array: &numbers))
