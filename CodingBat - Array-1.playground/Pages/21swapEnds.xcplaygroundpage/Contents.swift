

import Foundation

/*
 
 Given an array of ints, swap the first and last elements in the array. Return the modified array. The array length will be at least 1.
 
 swapEnds([1, 2, 3, 4]) → [4, 2, 3, 1]
 swapEnds([1, 2, 3]) → [3, 2, 1]
 swapEnds([8, 6, 7, 9, 5]) → [5, 6, 7, 9, 8]
 
 */

func swapEnds(_ a: [Int]) -> [Int] {
    var tmp = a[0]
    var result = a
    result[0] = result[result.count-1]
    result[result.count-1] = tmp
    return result
}

swapEnds([1, 2, 3, 4]) == [4, 2, 3, 1]
swapEnds([1, 2, 3]) == [3, 2, 1]
swapEnds([8, 6, 7, 9, 5]) == [5, 6, 7, 9, 8]
swapEnds([3, 1, 4, 1, 5, 9]) == [9, 1, 4, 1, 5, 3]
swapEnds([1, 2]) == [2, 1]
swapEnds([1]) == [1]

