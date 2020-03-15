//
//  SelectionSortAlternative.swift
//  
//
//  Created by Sayed Mahmudul Alam on 3/15/20.
//

import Foundation

struct SelectionSortAlternative {
    
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

    func selectionSort(array: inout [Int]) -> [Int] {
        var sorted = [Int]()
        for i in array {
            let smallestIndex = findSmallest(array: array)
            sorted.append(array[smallestIndex])
            array.remove(at: smallestIndex)
        }
        return sorted
    }
}
