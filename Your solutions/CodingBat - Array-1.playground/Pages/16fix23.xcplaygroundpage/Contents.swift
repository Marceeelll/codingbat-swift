

import Foundation

/*
 
 Given an int array length 3, if there is a 2 in the array immediately followed by a 3, set the 3 element to 0. Return the changed array.
 
 fix23([1, 2, 3]) → [1, 2, 0]
 fix23([2, 3, 5]) → [2, 0, 5]
 fix23([1, 2, 1]) → [1, 2, 1]
 
 */

func fix23(_ a: [Int]) -> [Int] {
    return []
}

fix23([1, 2, 3]) == [1, 2, 0]
fix23([2, 3, 5]) == [2, 0, 5]
fix23([1, 2, 1]) == [1, 2, 1]
fix23([3, 2, 1]) == [3, 2, 1]
fix23([2, 2, 3]) == [2, 2, 0]
fix23([2, 3, 3]) == [2, 0, 3]
