

import Foundation

/*
 
 Return a version of the given array where each zero value in the array is replaced by the largest odd value to the right of the zero in the array. If there is no odd value to the right of the zero, leave the zero as a zero.
 
 zeroMax([0, 5, 0, 3]) → [5, 5, 3, 3]
 zeroMax([0, 4, 0, 3]) → [3, 4, 3, 3]
 zeroMax([0, 1, 0]) → [1, 1, 0]
 
 */

func zeroMax(_ nums: [Int]) -> [Int] {
    var result = nums
    
    for i in 0..<result.count {
        if result[i] == 0 {
            var maxOddRightNumber = 0
            for m in i..<result.count {
                if result[m] % 2 == 1 {
                    if result[m] > maxOddRightNumber {
                        maxOddRightNumber = result[m]
                    }
                }
            }
            result[i] = maxOddRightNumber
        }
    }
    
    return result
}


zeroMax([0, 5, 0, 3]) == [5, 5, 3, 3]
zeroMax([0, 4, 0, 3]) == [3, 4, 3, 3]
zeroMax([0, 1, 0]) == [1, 1, 0]
zeroMax([0, 1, 5]) == [5, 1, 5]
zeroMax([0, 2, 0]) == [0, 2, 0]
zeroMax([1]) == [1]
zeroMax([0]) == [0]
zeroMax([]) == []
zeroMax([7, 0, 4, 3, 0, 2]) == [7, 3, 4, 3, 0, 2]
zeroMax([7, 0, 4, 3, 0, 1]) == [7, 3, 4, 3, 1, 1]
zeroMax([7, 0, 4, 3, 0, 0]) == [7, 3, 4, 3, 0, 0]
zeroMax([7, 0, 1, 0, 0, 7]) == [7, 7, 1, 7, 7, 7]


