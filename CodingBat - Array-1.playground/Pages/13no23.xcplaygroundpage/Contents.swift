

import Foundation

/*
 
 Given an int array length 2, return true if it does not contain a 2 or 3.
 
 no23([4, 5]) → true
 no23([4, 2]) → false
 no23([3, 5]) → false
 
 */

func no23(_ a: [Int]) -> Bool {
    return a[0] != 2 && a[0] != 3 && a[1] != 2 && a[1] != 3
}

no23([4, 5]) == true
no23([4, 2]) == false
no23([3, 5]) == false
no23([1, 9]) == true
no23([2, 9]) == false
no23([1, 3]) == false
no23([1, 1]) == true
no23([2, 2]) == false
no23([3, 3]) == false
no23([7, 8]) == true
no23([8, 7]) == true