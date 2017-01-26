

import Foundation

/*
 
 Given a non-negative int n, return the sum of its digits recursively (no loops). Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6), while divide (/) by 10 removes the rightmost digit (126 / 10 is 12).
 
 sumDigits(126) → 9
 sumDigits(49) → 13
 sumDigits(12) → 3
 
 */

func sumDigits(_ n: Int) -> Int {
    return -1
}

sumDigits(126) == 9
sumDigits(49) == 13
sumDigits(12) == 3
sumDigits(10) == 1
sumDigits(1) == 1
sumDigits(0) == 0
sumDigits(730) == 10
sumDigits(1111) == 4
sumDigits(11111) == 5
sumDigits(10110) == 3
sumDigits(235) == 10
