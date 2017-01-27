

import Foundation

/*
 
 Given an int array length 3, if there is a 2 in the array immediately followed by a 3, set the 3 element to 0. Return the changed array.
 
 fix23([1, 2, 3]) → [1, 2, 0]
 fix23([2, 3, 5]) → [2, 0, 5]
 fix23([1, 2, 1]) → [1, 2, 1]
 
 */

func fix23(_ a: [Int]) -> [Int] {
    var result = a
    if a[0] == 2 && a[1] == 3 {
        result[1] = 0
    } else if a[1] == 2 && a[2] == 3 {
        result[2] = 0
    }
    return result
}

fix23([1, 2, 3]) == [1, 2, 0]
fix23([2, 3, 5]) == [2, 0, 5]
fix23([1, 2, 1]) == [1, 2, 1]
fix23([3, 2, 1]) == [3, 2, 1]
fix23([2, 2, 3]) == [2, 2, 0]
fix23([2, 3, 3]) == [2, 0, 3]