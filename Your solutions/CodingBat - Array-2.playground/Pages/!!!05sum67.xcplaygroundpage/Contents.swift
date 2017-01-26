

import Foundation

/*
 
 Return the sum of the numbers in the array, except ignore sections of numbers starting with a 6 and extending to the next 7 (every 6 will be followed by at least one 7). Return 0 for no numbers.
 
 sum67([1, 2, 2]) → 5
 sum67([1, 2, 2, 6, 99, 99, 7]) → 5
 sum67([1, 1, 6, 7, 2]) → 4
 
 */

func sum67(_ nums: [Int]) -> Int {
}

sum67([1, 2, 2]) == 5
sum67([1, 2, 2, 6, 99, 99, 7]) == 5
sum67([1, 1, 6, 7, 2]) == 4
sum67([1, 6, 2, 2, 7, 1, 6, 99, 99, 7]) == 2
sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7])
sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7]) == 2
sum67([2, 7, 6, 2, 6, 7, 2, 7])
sum67([2, 7, 6, 2, 6, 7, 2, 7]) == 18
sum67([2, 7, 6, 2, 6, 2, 7]) == 9
sum67([1, 6, 7, 7]) == 8
sum67([6, 7, 1, 6, 7, 7]) == 8
sum67([6, 8, 1, 6, 7]) == 0
sum67([]) == 0


