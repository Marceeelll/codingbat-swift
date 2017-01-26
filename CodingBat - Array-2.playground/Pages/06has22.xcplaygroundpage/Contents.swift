

import Foundation

/*
 
 Given an array of ints, return true if the array contains a 2 next to a 2 somewhere.
 
 has22([1, 2, 2]) → true
 has22([1, 2, 1, 2]) → false
 has22([2, 1, 2]) → false
 
 */

func has22(_ nums: [Int]) -> Bool {
    // Solution 1
//    let numberOfElements = nums.count-1
//    
//    if numberOfElements >= 0 {
//        for i in 0..<numberOfElements {
//            if nums[i] == 2 && nums[i+1] == 2 {
//                return true
//            }
//        }
//    }
    
    // Solution 2
    var lastWas2 = false
    for num in nums {
        if num == 2 && lastWas2 {
            return true
        }
        if num == 2 {
            lastWas2 = true
        } else {
            lastWas2 = false
        }
    }
    
    return false
}

has22([1, 2, 2]) == true
has22([1, 2, 1, 2]) == false
has22([2, 1, 2]) == false
has22([2, 2, 1, 2]) == true
has22([1, 3, 2]) == false
has22([1, 3, 2, 2]) == true
has22([2, 3, 2, 2]) == true
has22([4, 2, 4, 2, 2, 5]) == true
has22([1, 2]) == false
has22([2, 2]) == true
has22([2]) == false
has22([]) == false
