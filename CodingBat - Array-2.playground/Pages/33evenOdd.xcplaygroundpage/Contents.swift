

import Foundation

/*
 
 Return an array that contains the exact same numbers as the given array, but rearranged so that all the even numbers come before all the odd numbers. Other than that, the numbers can be in any order. You may modify and return the given array, or make a new array.
 
 evenOdd([1, 0, 1, 0, 0, 1, 1]) → [0, 0, 0, 1, 1, 1, 1]
 evenOdd([3, 3, 2]) → [2, 3, 3]
 evenOdd([2, 2, 2]) → [2, 2, 2]
 
 */

func evenOdd(_ nums: [Int]) -> [Int] {
    var result = nums
    var frontIndex = 0
    var endIndex = nums.count - 1
    
    for num in nums {
        if num % 2 == 0 {
            result[frontIndex] = num
            frontIndex += 1
        } else {
            result[endIndex] = num
            endIndex -= 1
        }
    }
    
    return result
}

evenOdd([1, 0, 1, 0, 0, 1, 1]) == [0, 0, 0, 1, 1, 1, 1]
evenOdd([3, 3, 2]) == [2, 3, 3]
evenOdd([2, 2, 2]) == [2, 2, 2]
evenOdd([3, 2, 2]) == [2, 2, 3]
evenOdd([1, 1, 0, 1, 0]) == [0, 0, 1, 1, 1]
evenOdd([1]) == [1]
evenOdd([1, 2]) == [2, 1]
evenOdd([2, 1]) == [2, 1]
evenOdd([]) == []
