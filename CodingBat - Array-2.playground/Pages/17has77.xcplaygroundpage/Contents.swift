

import Foundation

/*
 
 Given an array of ints, return true if the array contains two 7's next to each other, or there are two 7's separated by one element, such as with {7, 1, 7}.
 
 has77([1, 7, 7]) → true
 has77([1, 7, 1, 7]) → true
 has77([1, 7, 1, 1, 7]) → false
 
 */

func has77(_ nums: [Int]) -> Bool {
    if nums.count >= 2 {
        for i in 0..<nums.count - 2 {
            if nums[i] == 7 && (nums[i+1] == 7 || nums[i+2] == 7) {
                return true
            }
        }
        
        if nums[nums.count-2] == 7 && nums[nums.count-1] == 7 {
            return true
        }
    }
    
    return false
}

has77([1, 7, 7]) == true
has77([1, 7, 1, 7]) == true
has77([1, 7, 1, 1, 7]) == false
has77([7, 7, 1, 1, 7]) == true
has77([2, 7, 2, 2, 7, 2]) == false
has77([2, 7, 2, 2, 7, 7]) == true
has77([7, 2, 7, 2, 2, 7]) == true
has77([7, 2, 6, 2, 2, 7]) == false
has77([7, 7, 7]) == true
has77([7, 1, 7]) == true
has77([7, 1, 1]) == false
has77([1, 2]) == false
has77([1, 7]) == false
has77([7]) == false
