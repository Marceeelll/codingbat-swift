

import Foundation

/*
 
 Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value. Return the number of clumps in the given array.
 
 countClumps([1, 2, 2, 3, 4, 4]) → 2
 countClumps([1, 1, 2, 1, 1]) → 2
 countClumps([1, 1, 1, 1, 1]) → 1
 
 */

func countClumps(_ nums: [Int]) -> Int {
    return -1
}

countClumps([1, 2, 2, 3, 4, 4]) == 2
countClumps([1, 1, 2, 1, 1]) == 2
countClumps([1, 1, 1, 1, 1]) == 1
countClumps([1, 2, 3]) == 0
countClumps([2, 2, 1, 1, 1, 2, 1, 1, 2, 2]) == 4
countClumps([0, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2]) == 4
countClumps([0, 0, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2]) == 5
countClumps([0, 0, 0, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2]) == 5
countClumps([]) == 0
