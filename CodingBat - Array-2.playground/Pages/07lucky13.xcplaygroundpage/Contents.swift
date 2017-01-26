

import Foundation

/*
 
 Given an array of ints, return true if the array contains no 1's and no 3's.
 
 lucky13([0, 2, 4]) → true
 lucky13([1, 2, 3]) → false
 lucky13([1, 2, 4]) → false
 
 */

func lucky13(_ nums: [Int]) -> Bool {
    
    for num in nums {
        if num == 1 || num == 3 {
            return false
        }
    }
    
    return true
}

lucky13([0, 2, 4]) == true
lucky13([1, 2, 3]) == false
lucky13([1, 2, 4]) == false
lucky13([2, 7, 2, 8]) == true
lucky13([2, 7, 1, 8]) == false
lucky13([3, 7, 2, 8]) == false
lucky13([2, 7, 2, 1]) == false
lucky13([1, 2]) == false
lucky13([2, 2]) == true
lucky13([2]) == true
lucky13([3]) == false
lucky13([]) == true
