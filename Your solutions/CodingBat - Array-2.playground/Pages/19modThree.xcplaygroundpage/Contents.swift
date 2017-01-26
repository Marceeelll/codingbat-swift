

import Foundation

/*
 
 Given an array of ints, return true if the array contains either 3 even or 3 odd values all next to each other.
 
 modThree([2, 1, 3, 5]) → true
 modThree([2, 1, 2, 5]) → false
 modThree([2, 4, 2, 5]) → true
 
 */

func modThree(_ nums: [Int]) -> Bool {
    return false
}

modThree([2, 1, 3, 5]) == true
modThree([2, 1, 2, 5]) == false
modThree([2, 4, 2, 5]) == true
modThree([1, 2, 1, 2, 1]) == false
modThree([9, 9, 9]) == true
modThree([1, 2, 1]) == false
modThree([1, 2]) == false
modThree([1]) == false
modThree([]) == false
modThree([9, 7, 2, 9]) == false
modThree([9, 7, 2, 9, 2, 2]) == false
modThree([9, 7, 2, 9, 2, 2, 6]) == true
