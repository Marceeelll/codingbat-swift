

import Foundation

/*
 
 Given 2 int arrays, each length 2, return a new array length 4 containing all their elements.
 
 plusTwo([1, 2], [3, 4]) → [1, 2, 3, 4]
 plusTwo([4, 4], [2, 2]) → [4, 4, 2, 2]
 plusTwo([9, 2], [3, 4]) → [9, 2, 3, 4]
 
 */

func plusTwo(_ a: [Int], _ b: [Int]) -> [Int] {
    var result = a
    result.append(contentsOf: b)
    return result
}

plusTwo([1, 2], [3, 4]) == [1, 2, 3, 4]
plusTwo([4, 4], [2, 2]) == [4, 4, 2, 2]
plusTwo([9, 2], [3, 4]) == [9, 2, 3, 4]
