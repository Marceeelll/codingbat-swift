

import Foundation

/*
 
 
 Given an array of ints, return the sum of the first 2 elements in the array. If the array length is less than 2, just sum up the elements that exist, returning 0 if the array is length 0.
 
 sum2([1, 2, 3]) → 3
 sum2([1, 1]) → 2
 sum2([1, 1, 1, 1]) → 2
 
 */

func sum2(_ nums: [Int]) -> Int {
    if nums.count == 0 {
        return 0
    } else if nums.count == 1 {
        return nums[0]
    } else {
        return nums[0] + nums[1]
    }
}

sum2([1, 2, 3]) == 3
sum2([1, 1]) == 2
sum2([1, 1, 1, 1]) == 2
sum2([1, 2]) == 3
sum2([1]) == 1
sum2([]) == 0
sum2([4, 5, 6]) == 9
sum2([4]) == 4
