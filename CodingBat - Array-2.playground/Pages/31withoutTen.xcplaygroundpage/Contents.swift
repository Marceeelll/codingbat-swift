

import Foundation

/*
 
 Return a version of the given array where all the 10's have been removed. The remaining elements should shift left towards the start of the array as needed, and the empty spaces a the end of the array should be 0. So {1, 10, 10, 2} yields {1, 2, 0, 0}. You may modify and return the given array or make a new array.
 
 withoutTen([1, 10, 10, 2]) → [1, 2, 0, 0]
 withoutTen([10, 2, 10]) → [2, 0, 0]
 withoutTen([1, 99, 10]) → [1, 99, 0]
 
 */

func withoutTen(_ nums: [Int]) -> [Int] {
    var result = nums
    var endIndex = nums.count - 1
    var frontIndex = 0
    
    for num in nums {
        if num == 10 {
            result[endIndex] = 0
            endIndex -= 1
        } else {
            result[frontIndex] = num
            frontIndex += 1
        }
    }
    
    return result
}


withoutTen([1, 10, 10, 2]) == [1, 2, 0, 0]
withoutTen([10, 2, 10]) == [2, 0, 0]
withoutTen([1, 99, 10]) == [1, 99, 0]
withoutTen([10, 13, 10, 14]) == [13, 14, 0, 0]
withoutTen([10, 13, 10, 14, 10]) == [13, 14, 0, 0, 0]
withoutTen([10, 10, 3]) == [3, 0, 0]
withoutTen([1]) == [1]
withoutTen([13, 1]) == [13, 1]
withoutTen([10]) == [0]
withoutTen([]) == []


