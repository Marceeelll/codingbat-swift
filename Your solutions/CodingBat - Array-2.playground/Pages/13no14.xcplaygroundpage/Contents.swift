

import Foundation

/*
 
 Given an array of ints, return true if it contains no 1's or it contains no 4's.
 
 no14([1, 2, 3]) → true
 no14([1, 2, 3, 4]) → false
 no14([2, 3, 4]) → true
 
 */

func no14(_ nums: [Int]) -> Bool {
}

no14([1, 2, 3]) == true
no14([1, 2, 3, 4]) == false
no14([2, 3, 4]) == true
no14([1, 1, 4, 4]) == false
no14([2, 2, 4, 4]) == true
no14([2, 3, 4, 1]) == false
no14([2, 1, 1]) == true
no14([1, 4]) == false
no14([2]) == true
no14([2, 1]) == true
no14([1]) == true
no14([4]) == true
no14([]) == true
