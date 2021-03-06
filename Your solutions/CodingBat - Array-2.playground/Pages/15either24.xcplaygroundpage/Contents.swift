

import Foundation

/*
 
 Given an array of ints, return true if the array contains a 2 next to a 2 or a 4 next to a 4, but not both.
 
 either24([1, 2, 2]) → true
 either24([4, 4, 1]) → true
 either24([4, 4, 1, 2, 2]) → false
 
 */

func either24(_ nums: [Int]) -> Bool {
    return false
}


either24([1, 2, 2]) == true
either24([4, 4, 1]) == true
either24([4, 4, 1, 2, 2]) == false
either24([1, 2, 3, 4]) == false
either24([3, 5, 9]) == false
either24([1, 2, 3, 4, 4]) == true
either24([2, 2, 3, 4]) == true
either24([1, 2, 3, 2, 2, 4]) == true
either24([1, 2, 3, 2, 2, 4, 4]) == false
either24([1, 2]) == false
either24([2, 2]) == true
either24([4, 4]) == true
either24([2]) == false
either24([]) == false
