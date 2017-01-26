

import Foundation

/*
 
 Return true if the array contains, somewhere, three increasing adjacent numbers like .... 4, 5, 6, ... or 23, 24, 25.
 
 tripleUp([1, 4, 5, 6, 2]) → true
 tripleUp([1, 2, 3]) → true
 tripleUp([1, 2, 4]) → false
 
 */

func tripleUp(_ nums: [Int]) -> Bool {
    return false
}

tripleUp([1, 4, 5, 6, 2]) == true
tripleUp([1, 2, 3]) == true
tripleUp([1, 2, 4]) == false
tripleUp([1, 2, 4, 5, 7, 6, 5, 6, 7, 6]) == true
tripleUp([1, 2, 4, 5, 7, 6, 5, 7, 7, 6]) == false
tripleUp([1, 2]) == false
tripleUp([1]) == false
tripleUp([]) == false
tripleUp([10, 9, 8, -100, -99, -98, 100]) == true
tripleUp([10, 9, 8, -100, -99, 99, 100]) == false
tripleUp([-100, -99, -99, 100, 101, 102]) == true
tripleUp([2, 3, 5, 6, 8, 9, 2, 3]) == false
