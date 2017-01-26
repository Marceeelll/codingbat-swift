

import UIKit

/*
 
 Return the number of even ints in the given array. Note: the % "mod" operator computes the remainder, e.g. 5 % 2 is 1.
 countEvens([2, 1, 2, 3, 4]) → 3
 countEvens([2, 2, 0]) → 3
 countEvens([1, 3, 5]) → 0
 
 */

func countEvens(_ nums: [Int]) -> Int {
    var evenNumbers = 0
    
    for num in nums {
        if num % 2 == 0 {
            evenNumbers += 1
        }
    }
    
    return evenNumbers
}

countEvens([2, 1, 2, 3, 4]) == 3
countEvens([2, 2, 0]) == 3
countEvens([1, 3, 5]) == 0
countEvens([]) == 0
countEvens([11, 9, 0, 1]) == 1
countEvens([2, 11, 9, 0]) == 2
countEvens([2]) == 1
countEvens([2, 5, 12]) == 2