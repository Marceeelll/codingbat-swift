

import Foundation

/*
 
 Given an array of ints, return true if every element is a 1 or a 4.
 
 only14([1, 4, 1, 4]) → true
 only14([1, 4, 2, 4]) → false
 only14([1, 1]) → true
 
 */

func only14(_ nums: [Int]) -> Bool {
    for num in nums {
        if num != 1 && num != 4 {
            return false
        }
    }
    return true
}

only14([1, 4, 1, 4]) == true
only14([1, 4, 2, 4]) == false
only14([1, 1]) == true
only14([4, 1]) == true
only14([2]) == false
only14([]) == true
only14([1, 4, 1, 3]) == false
only14([3, 1, 3]) == false
only14([1]) == true
only14([4]) == true
only14([3, 4]) == false
only14([1, 3, 4]) == false

