

import Foundation

/*
 
 We'll say that a 1 immediately followed by a 3 in an array is an "unlucky" 1. Return true if the given array contains an unlucky 1 in the first 2 or last 2 positions in the array.
 
 unlucky1([1, 3, 4, 5]) → true
 unlucky1([2, 1, 3, 4, 5]) → true
 unlucky1([1, 1, 1]) → false
 
 */

func unlucky1(_ a: [Int]) -> Bool {
    if a.count == 2 {
        return a[0] == 1 && a[1] == 3 || a[a.count-2] == 1 && a[a.count-1] == 3
    } else if a.count > 2 {
        return a[0] == 1 && a[1] == 3 || a[1] == 1 && a[2] == 3 || a[a.count-2] == 1 && a[a.count-1] == 3
    }
    return false
}


unlucky1([1, 3, 4, 5]) == true
unlucky1([2, 1, 3, 4, 5])
unlucky1([2, 1, 3, 4, 5]) == true
unlucky1([1, 1, 1]) == false
unlucky1([1, 3, 1]) == true
unlucky1([1, 1, 3]) == true
unlucky1([1, 2, 3]) == false
unlucky1([3, 3, 3]) == false
unlucky1([1, 3]) == true
unlucky1([1, 4]) == false
unlucky1([1]) == false
unlucky1([]) == false
unlucky1([1, 1, 1, 3, 1]) == false
unlucky1([1, 1, 3, 1, 1]) == true
unlucky1([1, 1, 1, 1, 3]) == true
unlucky1([1, 4, 1, 5]) == false
unlucky1([1, 1, 2, 3]) == false
unlucky1([2, 3, 2, 1]) == false
unlucky1([2, 3, 1, 3]) == true
unlucky1([1, 2, 3, 4, 1, 3]) == true