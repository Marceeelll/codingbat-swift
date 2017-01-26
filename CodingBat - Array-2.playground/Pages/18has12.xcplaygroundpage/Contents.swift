

import Foundation

/*
 
 Given an array of ints, return true if there is a 1 in the array with a 2 somewhere later in the array.
 
 has12([1, 3, 2]) → true
 has12([3, 1, 2]) → true
 has12([3, 1, 4, 5, 2]) → true
 
 */

func has12(_ nums: [Int]) -> Bool {
    var found1 = false
    var found2 = false
    
    for num in nums {
        if num == 1 {
            found1 = true
        }
        if found1 && num == 2 {
            found2 = true
        }
    }
    return found1 && found2
}

has12([1, 3, 2]) == true
has12([3, 1, 2]) == true
has12([3, 1, 4, 5, 2]) == true
has12([3, 1, 4, 5, 6]) == false
has12([3, 1, 4, 1, 6, 2]) == true
has12([2, 1, 4, 1, 6, 2]) == true
has12([2, 1, 4, 1, 6]) == false
has12([1]) == false
has12([2, 1, 3]) == false
has12([2, 1, 3, 2]) == true
has12([2]) == false
has12([3, 2]) == false
has12([3, 1, 3, 2]) == true
has12([3, 5, 9]) == false
has12([3, 5, 1]) == false
has12([3, 2, 1]) == false
has12([1, 2]) == true
