

import Foundation

/*
 
 Given an array of ints, return true if the value 3 appears in the array exactly 3 times, and no 3's are next to each other.
 
 haveThree([3, 1, 3, 1, 3]) → true
 haveThree([3, 1, 3, 3]) → false
 haveThree([3, 4, 3, 3, 4]) → false
 
 */

func haveThree(_ nums: [Int]) -> Bool {
    var count3 = 0
    var found3AtLastIndex = false
    
    for num in nums {
        if num == 3 && found3AtLastIndex {
            return false
        }
        found3AtLastIndex = false
        if num == 3 {
            count3 += 1
            found3AtLastIndex = true
        }
    }
    
    return count3 == 3
}

haveThree([3, 1, 3, 1, 3]) == true
haveThree([3, 1, 3, 3]) == false
haveThree([3, 4, 3, 3, 4]) == false
haveThree([1, 3, 1, 3, 1, 2]) == false
haveThree([1, 3, 1, 3, 1, 3]) == true
haveThree([1, 3, 3, 1, 3]) == false
haveThree([1, 3, 1, 3, 1, 3, 4, 3]) == false
haveThree([3, 4, 3, 4, 3, 4, 4]) == true
haveThree([3, 3, 3]) == false
haveThree([1, 3]) == false
haveThree([3]) == false
haveThree([1]) == false

