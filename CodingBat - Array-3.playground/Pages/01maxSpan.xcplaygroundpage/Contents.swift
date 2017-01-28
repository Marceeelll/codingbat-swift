

import UIKit

/*
 
 Consider the leftmost and righmost appearances of some value in an array. We'll say that the "span" is the number of elements between the two inclusive. A single value has a span of 1. Returns the largest span found in the given array. (Efficiency is not a priority.)
 
 maxSpan([1, 2, 1, 1, 3]) → 4
 maxSpan([1, 4, 2, 1, 4, 1, 4]) → 6
 maxSpan([1, 4, 2, 1, 4, 4, 4]) → 6
 
 */

func maxSpan(_ nums: [Int]) -> Int {
    var maxSpan = 0
    
    for i in 0..<nums.count {
        for m in (i..<nums.count).reversed() {
            if nums[m] == nums[i] {
                let tmpSpan = m - (i-1)
                if maxSpan < tmpSpan {
                    maxSpan = tmpSpan
                }
                break
            }
        }
    }
    
    return maxSpan
}

maxSpan([1, 2, 1, 1, 3])
maxSpan([1, 2, 1, 1, 3]) == 4
maxSpan([1, 4, 2, 1, 4, 1, 4]) == 6
maxSpan([1, 4, 2, 1, 4, 4, 4]) == 6
maxSpan([3, 3, 3]) == 3
maxSpan([3, 9, 3]) == 3
maxSpan([3, 9, 9]) == 2
maxSpan([3, 9]) == 1
maxSpan([3, 3]) == 2
maxSpan([]) == 0
maxSpan([1]) == 1
