

import Foundation

/*
 
 Given an int array, return true if the array contains 2 twice, or 3 twice. The array will be length 0, 1, or 2.
 
 double23([2, 2]) → true
 double23([3, 3]) → true
 double23([2, 3]) → false
 
 */

func double23(_ a: [Int]) -> Bool {
    return false
}

double23([2, 2]) == true
double23([3, 3]) == true
double23([2, 3]) == false
double23([3, 2]) == false
double23([4, 5]) == false
double23([2]) == false
double23([3]) == false
double23([]) == false
double23([3, 4]) == false
