

import Foundation

/*
 
 (This is a slightly harder version of the fix34 problem.) Return an array that contains exactly the same numbers as the given array, but rearranged so that every 4 is immediately followed by a 5. Do not move the 4's, but every other number may move. The array contains the same number of 4's and 5's, and every 4 has a number after it that is not a 4. In this version, 5's may appear anywhere in the original array.
 
 fix45([5, 4, 9, 4, 9, 5]) → [9, 4, 5, 4, 5, 9]
 fix45([1, 4, 1, 5]) → [1, 4, 5, 1]
 fix45([1, 4, 1, 5, 5, 4, 1]) → [1, 4, 5, 1, 1, 4, 5]
 
 */

func fix45(_ nums: [Int]) -> [Int] {
    var result = nums
    var indexesOf5 = [Int]()
    
    for i in 0..<result.count {
        if nums[i] == 5 {
            if i > 0 && nums[i-1] != 4 {
                indexesOf5.append(i)
            } else if i == 0 {
                indexesOf5.append(i)
            }
        }
    }
    
    var lastUsed5Index = 0
    for i in 0..<result.count {
        if result[i] == 4 {
            if result[i+1] != 5 {
                result[indexesOf5[lastUsed5Index]] = result[i+1]
                result[i+1] = 5
                lastUsed5Index += 1

            }
        }
    }
    
    return result
}

fix45([5, 4, 9, 4, 9, 5]) == [9, 4, 5, 4, 5, 9]
fix45([1, 4, 1, 5]) == [1, 4, 5, 1]
fix45([1, 4, 1, 5, 5, 4, 1]) == [1, 4, 5, 1, 1, 4, 5]
fix45([4, 9, 4, 9, 5, 5, 4, 9, 5]) == [4, 5, 4, 5, 9, 9, 4, 5, 9]
fix45([5, 5, 4, 1, 4, 1]) == [1, 1, 4, 5, 4, 5]
fix45([4, 2, 2, 5]) == [4, 5, 2, 2]
fix45([4, 2, 4, 2, 5, 5]) == [4, 5, 4, 5, 2, 2]
fix45([4, 2, 4, 5, 5]) == [4, 5, 4, 5, 2]
fix45([1, 1, 1]) == [1, 1, 1]
fix45([4, 5]) == [4, 5]
fix45([5, 4, 1]) == [1, 4, 5]
fix45([]) == []
fix45([5, 4, 5, 4, 1]) == [1, 4, 5, 4, 5]
fix45([4, 5, 4, 1, 5]) == [4, 5, 4, 5, 1]
fix45([3, 4, 5]) == [3, 4, 5]
fix45([4, 1, 5]) == [4, 5, 1]
fix45([5, 4, 1]) == [1, 4, 5]
fix45([2, 4, 2, 5]) == [2, 4, 5, 2]


