

import Foundation

/*
 
 We'll say that an element in an array is "alone" if there are values before and after it, and those values are different from it. Return a version of the given array where every instance of the given value which is alone is replaced by whichever value to its left or right is larger.
 
 notAlone([1, 2, 3], 2) → [1, 3, 3]
 notAlone([1, 2, 3, 2, 5, 2], 2) → [1, 3, 3, 5, 5, 2]
 notAlone([3, 4], 3) → [3, 4]
 
 */

func notAlone(_ nums: [Int], _ val: Int) -> [Int] {
    var result = nums
    
    if nums.count >= 3 {
        for i in 1..<nums.count - 1 {
            if nums[i] == val {
                if nums[i-1] != val && nums[i+1] != val {
                    var max = nums[i-1]
                    if nums[i+1] > max {
                        max = nums[i+1]
                    }
                    result[i] = max
                }
            }
        }
    }
    
    return result
}

notAlone([1, 2, 3], 2) == [1, 3, 3]
notAlone([1, 2, 3, 2, 5, 2], 2) == [1, 3, 3, 5, 5, 2]
notAlone([3, 4], 3) == [3, 4]
notAlone([3, 3], 3) == [3, 3]
notAlone([1, 3, 1, 2], 1) == [1, 3, 3, 2]
notAlone([3], 3) == [3]
notAlone([], 3) == []
notAlone([7, 1, 6], 1) == [7, 7, 6]
notAlone([1, 1, 1], 1) == [1, 1, 1]
notAlone([1, 1, 1, 2], 1) == [1, 1, 1, 2]


