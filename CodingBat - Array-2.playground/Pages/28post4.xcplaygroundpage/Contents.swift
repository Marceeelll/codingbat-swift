

import Foundation

/*
 
 Given a non-empty array of ints, return a new array containing the elements from the original array that come after the last 4 in the original array. The original array will contain at least one 4. Note that it is valid in java to create an array of length 0.
 
 post4([2, 4, 1, 2]) → [1, 2]
 post4([4, 1, 4, 2]) → [2]
 post4([4, 4, 1, 2, 3]) → [1, 2, 3]
 
 */

func post4(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    for num in nums.reversed() {
        if num == 4 {
            break
        } else {
            result.insert(num, at: 0)
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
