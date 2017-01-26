

import Foundation

/*
 
 Given n>=0, create an array with the pattern {1,    1, 2,    1, 2, 3,   ... 1, 2, 3 .. n} (spaces added to show the grouping). Note that the length of the array will be 1 + 2 + 3 ... + n, which is known to sum to exactly n*(n + 1)/2.
 
 seriesUp(3) → [1, 1, 2, 1, 2, 3]
 seriesUp(4) → [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]
 seriesUp(2) → [1, 1, 2]
 
 */

func seriesUp(_ n: Int) -> [Int] {
    var result = [Int]()
    
    if n > 0 {
        for i in 1...n {
            for m in 1...i {
                result.append(m)
            }
        }
    }
    
    return result
}

seriesUp(3) == [1, 1, 2, 1, 2, 3]
seriesUp(4) == [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]
seriesUp(2) == [1, 1, 2]
seriesUp(1) == [1]
seriesUp(0) == []
seriesUp(6) == [1, 1, 2, 1, 2, 3, 1, 2, 3, 4, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 6]