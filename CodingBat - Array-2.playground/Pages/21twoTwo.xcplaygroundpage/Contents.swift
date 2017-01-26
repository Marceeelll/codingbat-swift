

import Foundation

/*
 
 Given an array of ints, return true if every 2 that appears in the array is next to another 2.
 
 twoTwo([4, 2, 2, 3]) → true
 twoTwo([2, 2, 4]) → true
 twoTwo([2, 2, 4, 2]) → false
 
 */

func twoTwo(_ nums: [Int]) -> Bool {
    var every2IsNextToAnother2 = true
    
    if nums.count > 0 {
        for i in 0..<nums.count - 1 {
            if nums[i] == 2 {
                if i>0 && (nums[i-1] != 2 && nums[i+1] != 2) {
                    every2IsNextToAnother2 = false
                }
            }
        }
        if nums.count >= 2 && nums[nums.count-1] == 2 && nums[nums.count-2] != 2 {
            every2IsNextToAnother2 = false
        }
        if nums.count == 1 && nums[0] == 2 {
            every2IsNextToAnother2 = false
        }
    }
    
    return every2IsNextToAnother2
}

twoTwo([4, 2, 2, 3]) == true
twoTwo([2, 2, 4]) == true
twoTwo([2, 2, 4, 2]) == false
twoTwo([1, 3, 4]) == true
twoTwo([1, 2, 2, 3, 4]) == true
twoTwo([1, 2, 3, 4]) == false
twoTwo([2, 2]) == true
twoTwo([2, 2, 7]) == true
twoTwo([2, 2, 7, 2, 1]) == false
twoTwo([4, 2, 2, 2]) == true
twoTwo([2, 2, 2]) == true
twoTwo([1, 2]) == false
twoTwo([2]) == false
twoTwo([1]) == true
twoTwo([]) == true
twoTwo([5, 2, 2, 3]) == true
twoTwo([2, 2, 5, 2]) == false
