

import Foundation

/*
 
 Given an array of ints, return true if it contains no 1's or it contains no 4's.
 
 no14([1, 2, 3]) → true
 no14([1, 2, 3, 4]) → false
 no14([2, 3, 4]) → true
 
 */

func no14(_ nums: [Int]) -> Bool {
    var found4 = false
    var found1 = false
    
    for num in nums {
        if num == 1 {
            found1 = true
        }
        if num == 4 {
            found4 = true
        }
    }
    
    return (!found1 && !found4) || (found1 && !found4) || (!found1 && found4)
}

no14([1, 2, 3]) == true
no14([1, 2, 3, 4]) == false
no14([2, 3, 4]) == true
no14([1, 1, 4, 4]) == false
no14([2, 2, 4, 4]) == true
no14([2, 3, 4, 1]) == false
no14([2, 1, 1]) == true
no14([1, 4]) == false
no14([2]) == true
no14([2, 1]) == true
no14([1]) == true
no14([4]) == true
no14([]) == true
