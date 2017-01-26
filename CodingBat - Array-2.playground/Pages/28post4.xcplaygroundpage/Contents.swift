

import Foundation

/*
 
 Given a non-empty array of ints, return a new array containing the elements from the original array that come after the last 4 in the original array. The original array will contain at least one 4. Note that it is valid in java to create an array of length 0.
 
 post4([2, 4, 1, 2]) → [1, 2]
 post4([4, 1, 4, 2]) → [2]
 post4([4, 4, 1, 2, 3]) → [1, 2, 3]
 
 */

func post4(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    
    if nums.count > 0 {
        var index = 0
        for i in (0..<nums.count).reversed() {
            if nums[i] == 4 {
                index = i + 1
                break
            }
        }
        for i in index..<nums.count {
            result.append(nums[i])
        }
    }
    
    return result
}


post4([2, 4, 1, 2]) == [1, 2]
post4([4, 1, 4, 2]) == [2]
post4([4, 4, 1, 2, 3]) == [1, 2, 3]
post4([4, 2]) == [2]
post4([4, 4, 3]) == [3]
post4([4, 4]) == []
post4([4]) == []
post4([2, 4, 1, 4, 3, 2]) == [3, 2]
post4([4, 1, 4, 2, 2, 2]) == [2, 2, 2]
post4([3, 4, 3, 2]) == [3, 2]
