

import Foundation

/*
 
 Start with 2 int arrays, a and b, each length 2. Consider the sum of the values in each array. Return the array which has the largest sum. In event of a tie, return a.
 
 biggerTwo([1, 2], [3, 4]) → [3, 4]
 biggerTwo([3, 4], [1, 2]) → [3, 4]
 biggerTwo([1, 1], [1, 2]) → [1, 2]
 
 */

func biggerTwo(_ a: [Int], _ b: [Int]) -> [Int] {
    var sumA = a[0] + a[1]
    var sumB = b[0] + b[1]
    return sumA >= sumB ? a : b
}

biggerTwo([1, 2], [3, 4]) == [3, 4]
biggerTwo([3, 4], [1, 2]) == [3, 4]
biggerTwo([1, 1], [1, 2]) == [1, 2]
biggerTwo([2, 1], [1, 1]) == [2, 1]
biggerTwo([2, 2], [1, 3]) == [2, 2]
biggerTwo([1, 3], [2, 2]) == [1, 3]
biggerTwo([6, 7], [3, 1]) == [6, 7]
