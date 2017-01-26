

import Foundation

/*
 
 We'll say that a value is "everywhere" in an array if for every pair of adjacent elements in the array, at least one of the pair is that value. Return true if the given value is everywhere in the array.
 
 isEverywhere([1, 2, 1, 3], 1) → true
 isEverywhere([1, 2, 1, 3], 2) → false
 isEverywhere([1, 2, 1, 3, 4], 1) → false
 
 */

func isEverywhere(_ nums: [Int], _ val: Int) -> Bool {
}

isEverywhere([1, 2, 1, 3], 1) == true
isEverywhere([1, 2, 1, 3], 2) == false
isEverywhere([1, 2, 1, 3, 4], 1) == false
isEverywhere([2, 1, 2, 1], 1) == true
isEverywhere([2, 1, 2, 1], 2) == true
isEverywhere([2, 1, 2, 3, 1], 2) == false
isEverywhere([3, 1], 3) == true
isEverywhere([3, 1], 2) == false
isEverywhere([3], 1) == true
isEverywhere([], 1) == true
