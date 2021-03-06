

import Foundation

/*
 
 Given an int array of any length, return a new array of its first 2 elements. If the array is smaller than length 2, use whatever elements are present.
 
 frontPiece([1, 2, 3]) → [1, 2]
 frontPiece([1, 2]) → [1, 2]
 frontPiece([1]) → [1]
 
 */

func frontPiece(_ a: [Int]) -> [Int] {
    if a.count == 0 {
        return []
    } else if a.count == 1 {
        return [a[0]]
    } else {
        return [a[0], a[1]]
    }
}

frontPiece([1, 2, 3]) == [1, 2]
frontPiece([1, 2]) == [1, 2]
frontPiece([1]) == [1]
frontPiece([]) == []
frontPiece([6, 5, 0]) == [6, 5]
frontPiece([6, 5]) == [6, 5]
frontPiece([3, 1, 4, 1, 5]) == [3, 1]
frontPiece([6]) == [6]

