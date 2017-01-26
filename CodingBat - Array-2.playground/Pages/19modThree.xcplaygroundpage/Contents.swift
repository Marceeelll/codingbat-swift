

import Foundation

/*
 
 Given an array of ints, return true if the array contains either 3 even or 3 odd values all next to each other.
 
 modThree([2, 1, 3, 5]) → true
 modThree([2, 1, 2, 5]) → false
 modThree([2, 4, 2, 5]) → true
 
 */

func modThree(_ nums: [Int]) -> Bool {
    var even = false
    var odd = false
    var evenCounter = 0
    var oddCounter = 0
    
    for num in nums {
        if num % 2 == 0 {
            evenCounter += 1
            oddCounter = 0
        } else {
            oddCounter += 1
            evenCounter = 0
        }
        if evenCounter == 3 {
            even = true
        }
        if oddCounter == 3 {
            odd = true
        }
    }
    
    return (even && !odd) || (!even && odd)
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
