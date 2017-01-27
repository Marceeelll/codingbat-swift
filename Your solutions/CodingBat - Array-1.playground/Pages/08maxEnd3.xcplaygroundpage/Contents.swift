

import Foundation

/*
 
 Given an array of ints length 3, figure out which is larger, the first or last element in the array, and set all the other elements to be that value. Return the changed array.
 
 maxEnd3([1, 2, 3]) → [3, 3, 3]
 maxEnd3([11, 5, 9]) → [11, 11, 11]
 maxEnd3([2, 11, 3]) → [3, 3, 3]
 
 */

func maxEnd3(_ nums: [Int]) -> [Int] {
    return []
}

maxEnd3([1, 2, 3]) == [3, 3, 3]
maxEnd3([11, 5, 9]) == [11, 11, 11]
maxEnd3([2, 11, 3]) == [3, 3, 3]
maxEnd3([11, 3, 3]) == [11, 11, 11]
maxEnd3([3, 11, 11]) == [11, 11, 11]
maxEnd3([2, 2, 2]) == [2, 2, 2]
maxEnd3([2, 11, 2]) == [2, 2, 2]
maxEnd3([0, 0, 1]) == [1, 1, 1]
