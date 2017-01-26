

import Foundation

/*
 
 Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value. Return the number of clumps in the given array.
 
 countClumps([1, 2, 2, 3, 4, 4]) → 2
 countClumps([1, 1, 2, 1, 1]) → 2
 countClumps([1, 1, 1, 1, 1]) → 1
 
 */

func countClumps(_ nums: [Int]) -> Int {
    var result = 0
    var i = 0
    
    while i < nums.count {
        let tmpNum = nums[i]
        var foundClump = false
        for m in (i+1)..<nums.count {
            if nums[m] == tmpNum {
                foundClump = true
                i = m
            } else {
                break
            }
        }
        if foundClump {
            result += 1
        }
        i += 1
    }
    
    return result
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