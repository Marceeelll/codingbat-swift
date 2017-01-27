

import UIKit

/*
 
 Given 2 int arrays, a and b, of any length, return a new array with the first element of each array. If either array is length 0, ignore that array.
 
 front11([1, 2, 3], [7, 9, 8]) → [1, 7]
 front11([1], [2]) → [1, 2]
 front11([1, 7], []) → [1]
 
 */

func front11(_ a: [Int], _ b: [Int]) -> [Int] {
    if a.count == 0 && b.count == 0 {
        return []
    } else if a.count == 0 {
        return [b[0]]
    } else if b.count == 0 {
        return [a[0]]
    } else {
        return [a[0], b[0]]
    }
}

front11([1, 2, 3], [7, 9, 8]) == [1, 7]
front11([1], [2]) == [1, 2]
front11([1, 7], []) == [1]
front11([], [2, 8]) == [2]
front11([], []) == []
front11([3], [1, 4, 1, 9]) == [3, 1]
front11([1, 4, 1, 9], []) == [1]