

import Foundation

/*
 
 Given an array of ints, return true if the sum of all the 2's in the array is exactly 8.
 
 sum28([2, 3, 2, 2, 4, 2]) → true
 sum28([2, 3, 2, 2, 4, 2, 2]) → false
 sum28([1, 2, 3, 4]) → false
 
 */

func sum28(_ nums: [Int]) -> Bool {
    var sumOf2 = 0
    
    for num in nums {
        if num == 2 {
            sumOf2 += 2
        }
    }
    return sumOf2 == 8
}

sum28([2, 3, 2, 2, 4, 2]) == true
sum28([2, 3, 2, 2, 4, 2, 2]) == false
sum28([1, 2, 3, 4]) == false
sum28([2, 2, 2, 2]) == true
sum28([1, 2, 2, 2, 2, 4]) == true
sum28([]) == false
sum28([2]) == false
sum28([8]) == false
sum28([2, 2, 2]) == false
sum28([2, 2, 2, 2, 2]) == false
sum28([1, 2, 2, 1, 2, 2]) == true
sum28([5, 2, 2, 2, 4, 2]) == true
