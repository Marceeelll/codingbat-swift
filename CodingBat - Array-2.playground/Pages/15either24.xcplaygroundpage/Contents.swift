

import Foundation

/*
 
 Given an array of ints, return true if the array contains a 2 next to a 2 or a 4 next to a 4, but not both.
 
 either24([1, 2, 2]) → true
 either24([4, 4, 1]) → true
 either24([4, 4, 1, 2, 2]) → false
 
 */

func either24(_ nums: [Int]) -> Bool {
    var nextTo2 = false
    var nextTo4 = false
    
    if nums.count >= 1 {
        for i in 0..<nums.count - 1 {
            if nums[i] == 2 && nums[i+1] == 2 {
                nextTo2 = true
            }
            if nums[i] == 4 && nums[i+1] == 4 {
                nextTo4 = true
            }
        }
    }
    
    return (nextTo2 && !nextTo4) || (!nextTo2 && nextTo4)
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
