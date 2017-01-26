

import Foundation

/*
 
 Return the sum of the numbers in the array, returning 0 for an empty array. Except the number 13 is very unlucky, so it does not count and numbers that come immediately after a 13 also do not count.
 sum13([1, 2, 2, 1]) → 6
 sum13([1, 1]) → 2
 sum13([1, 2, 2, 1, 13]) → 6
 
 */

func sum13(_ nums: [Int]) -> Int {
    var res = 0
    var lastWas13 = false
    for num in nums {
        if num == 13 {
            lastWas13 = true
        }
        if !lastWas13 {
            res += num
        }
        if num != 13 {
            lastWas13 = false
        }
    }
    return res
}

sum13([1, 2, 2, 1]) == 6
sum13([1, 1]) == 2
sum13([1, 2, 2, 1, 13]) == 6
sum13([1, 2, 13, 2, 1, 13]) == 4
sum13([13, 1, 2, 13, 2, 1, 13]) == 3
sum13([]) == 0
sum13([13]) == 0
sum13([13, 13]) == 0
sum13([13, 0, 13]) == 0
sum13([13, 1, 13]) == 0
sum13([5, 7, 2]) == 14


