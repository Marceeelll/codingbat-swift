

import Foundation

/*
 
 Given an array of ints of odd length, look at the first, last, and middle values in the array and return the largest. The array length will be at least 1.
 
 maxTriple([1, 2, 3]) → 3
 maxTriple([1, 5, 3]) → 5
 maxTriple([5, 2, 3]) → 5
 
 */

func maxTriple(_ a: [Int]) -> Int {
    let middle = a.count / 2
    var max = a[middle]
    
    if a.count == 1 {
        return max
    } else if a.count == 2 {
        if a[0] > max {
            max = a[0]
        }
    } else if a.count >= 3 {
        if a[0] > a[a.count-1] {
            if a[0] > max {
                max = a[0]
            }
        } else {
            if a[a.count-1] > max {
                max = a[a.count-1]
            }
        }
    }
    
    return max
}

maxTriple([5, 2,]) == 5
maxTriple([1, 2,]) == 2
maxTriple([1, 2, 3]) == 3
maxTriple([1, 5, 3]) == 5
maxTriple([5, 2, 3]) == 5
maxTriple([1, 2, 3, 1, 1]) == 3
maxTriple([1, 7, 3, 1, 5]) == 5
maxTriple([5, 1, 3, 7, 1]) == 5
maxTriple([5, 1, 7, 3, 7, 8, 1]) == 5
maxTriple([5, 1, 7, 9, 7, 8, 1]) == 9
maxTriple([5, 1, 7, 3, 7, 8, 9]) == 9
maxTriple([2, 2, 5, 1, 1]) == 5
