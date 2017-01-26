

import Foundation

/*
 
 Return an array that contains the exact same numbers as the given array, but rearranged so that all the zeros are grouped at the start of the array. The order of the non-zero numbers does not matter. So {1, 0, 0, 1} becomes {0 ,0, 1, 1}. You may modify and return the given array or make a new array.
 
 zeroFront([1, 0, 0, 1]) → [0, 0, 1, 1]
 zeroFront([0, 1, 1, 0, 1]) → [0, 0, 1, 1, 1]
 zeroFront([1, 0]) → [0, 1]
 
 */

func zeroFront(_ nums: [Int]) -> [Int] {
    var result = nums
    var frontIndex = 0
    var endIndex = nums.count - 1
    
    for num in nums {
        if num == 0 {
            result[frontIndex] = 0
            frontIndex += 1
        } else {
            result[endIndex] = num
            endIndex -= 1
        }
    }
    
    return result
}

zeroFront([1, 0, 0, 1]) == [0, 0, 1, 1]
zeroFront([0, 1, 1, 0, 1]) == [0, 0, 1, 1, 1]
zeroFront([1, 0]) == [0, 1]
zeroFront([0, 1]) == [0, 1]
zeroFront([1, 1, 1, 0]) == [0, 1, 1, 1]
zeroFront([2, 2, 2, 2]) == [2, 2, 2, 2]
zeroFront([0, 0, 1, 0]) == [0, 0, 0, 1]
zeroFront([-1, 0, 0, -1, 0]) == [0, 0, 0, -1, -1]
zeroFront([0, -3, 0, -3]) == [0, 0, -3, -3]
zeroFront([]) == []
zeroFront([9, 9, 0, 9, 0, 9]) == [0, 0, 9, 9, 9, 9]



