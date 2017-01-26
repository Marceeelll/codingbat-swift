

import Foundation

/*
 
 Given an array of ints, return true if the array contains a 2 next to a 2 somewhere.
 
 has22([1, 2, 2]) → true
 has22([1, 2, 1, 2]) → false
 has22([2, 1, 2]) → false
 
 */

func has22(_ nums: [Int]) -> Bool {
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
