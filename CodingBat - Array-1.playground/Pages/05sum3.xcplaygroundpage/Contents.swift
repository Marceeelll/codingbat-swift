

import Foundation

/*
 
 Given an array of ints length 3, return the sum of all the elements.
 
 sum3([1, 2, 3]) → 6
 sum3([5, 11, 2]) → 18
 sum3([7, 0, 0]) → 7
 
 */

func sum3(_ nums: [Int]) -> Int {
    // Solution 1
    var result = 0
    for num in nums {
        result += num
    }
    
    return result
    
    // Solution 2
    //return nums.map({result += $0})
}

sum3([1, 2, 3]) == 6
sum3([5, 11, 2]) == 18
sum3([7, 0, 0]) == 7
sum3([1, 2, 1]) == 4
sum3([1, 1, 1]) == 3
sum3([2, 7, 2]) == 11
