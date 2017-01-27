

import Foundation

/*
 
 Given an array of ints, return a new array length 2 containing the first and last elements from the original array. The original array will be length 1 or more.
 
 makeEnds([1, 2, 3]) → [1, 3]
 makeEnds([1, 2, 3, 4]) → [1, 4]
 makeEnds([7, 4, 6, 2]) → [7, 2]
 
 */

func makeEnds( _ a: [Int]) -> [Int] {
    return []
}

makeEnds([1, 2, 3]) == [1, 3]
makeEnds([1, 2, 3, 4]) == [1, 4]
makeEnds([7, 4, 6, 2]) == [7, 2]
makeEnds([1, 2, 2, 2, 2, 2, 2, 3]) == [1, 3]
makeEnds([7, 4]) == [7, 4]
makeEnds([7]) == [7, 7]
makeEnds([5, 2, 9]) == [5, 9]
makeEnds([2, 3, 4, 1]) == [2, 1]
