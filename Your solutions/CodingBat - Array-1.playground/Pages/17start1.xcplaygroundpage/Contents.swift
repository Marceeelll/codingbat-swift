

import Foundation

/*
 
 Start with 2 int arrays, a and b, of any length. Return how many of the arrays have 1 as their first element.
 
 start1([1, 2, 3], [1, 3]) → 2
 start1([7, 2, 3], [1]) → 1
 start1([1, 2], []) → 1
 
 */

func start1(_ a: [Int], _ b: [Int]) -> Int {
    return -1
}

start1([1, 2, 3], [1, 3]) == 2
start1([7, 2, 3], [1]) == 1
start1([1, 2], []) == 1
start1([], [1, 2]) == 1
start1([7], []) == 0
start1([7], [1]) == 1
start1([1], [1]) == 2
start1([7], [8]) == 0
start1([], []) == 0
start1([1, 3], [1]) == 2
