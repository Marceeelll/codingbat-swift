

import Foundation

/*
 
 Given base and n that are both 1 or more, compute recursively (no loops) the value of base to the n power, so powerN(3, 2) is 9 (3 squared).
 
 powerN(3, 1) → 3
 powerN(3, 2) → 9
 powerN(3, 3) → 27
 
 */

func powerN(_ base: Int, _ n: Int) -> Int {
    if n == 0 {
        return 1
    } else if n == 1 {
        return base
    } else {
        return base * powerN(base, n-1)
    }
}

powerN(3, 1) == 3
powerN(3, 2) == 9
powerN(3, 3) == 27
powerN(2, 1) == 2
powerN(2, 2) == 4
powerN(2, 3) == 8
powerN(2, 4) == 16
powerN(2, 5) == 32
powerN(10, 1) == 10
powerN(10, 2) == 100
powerN(10, 3) == 1000


