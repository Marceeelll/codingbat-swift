

import Foundation

/*
 
 Given an array of ints, return true if the number of 1's is greater than the number of 4's
 
 more14([1, 4, 1]) → true
 more14([1, 4, 1, 4]) → false
 more14([1, 1]) → true
 
 */

func more14(_ nums: [Int]) -> Bool {
}

more14([1, 4, 1]) == true
more14([1, 4, 1, 4]) == false
more14([1, 1]) == true
more14([1, 6, 6]) == true
more14([1]) == true
more14([1, 4]) == false
more14([6, 1, 1]) == true
more14([1, 6, 4]) == false
more14([1, 1, 4, 4, 1]) == true
more14([1, 1, 6, 4, 4, 1]) == true
more14([]) == false
more14([4, 1, 4, 6]) == false
more14([4, 1, 4, 6, 1]) == false
more14([1, 4, 1, 4, 1, 6]) == true
