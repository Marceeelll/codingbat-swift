

import Foundation

/*
 
 We'll say that an element in an array is "alone" if there are values before and after it, and those values are different from it. Return a version of the given array where every instance of the given value which is alone is replaced by whichever value to its left or right is larger.
 
 notAlone([1, 2, 3], 2) → [1, 3, 3]
 notAlone([1, 2, 3, 2, 5, 2], 2) → [1, 3, 3, 5, 5, 2]
 notAlone([3, 4], 3) → [3, 4]
 
 */

func notAlone(_ nums: [Int], _ val: Int) -> [Int] {
    var results = nums
    
    if results.count >= 3 {
        for i in 1..<results.count - 1 {
            if results[i] == val && results[i-1] != val && results[i+1] != val {
                let max = results[i-1] > results[i+1] ? results[i-1] : results[i+1]
                results[i] = max
            }
        }
    }
    
    return results
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


