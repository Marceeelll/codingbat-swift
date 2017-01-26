

import Foundation

/*
 
 Given arrays nums1 and nums2 of the same length, for every element in nums1, consider the corresponding element in nums2 (at the same index). Return the count of the number of times that the two elements differ by 2 or less, but are not equal.
 
 matchUp([1, 2, 3], [2, 3, 10]) → 2
 matchUp([1, 2, 3], [2, 3, 5]) → 3
 matchUp([1, 2, 3], [2, 3, 3]) → 2
 
 */


func matchUp(_ nums1: [Int], _ nums2: [Int]) -> Int {
    var counterDifferBy2 = 0
    
    for i in 0..<nums1.count {
        if abs(nums1[i] - nums2[i]) <= 2 && nums1[i] != nums2[i] {
            counterDifferBy2 += 1
        }
    }
    
    return counterDifferBy2
}


matchUp([1, 2, 3], [2, 3, 10]) == 2
matchUp([1, 2, 3], [2, 3, 5]) == 3
matchUp([1, 2, 3], [2, 3, 3]) == 2
matchUp([5, 3], [5, 5]) == 1
matchUp([5, 3], [4, 4]) == 2
matchUp([5, 3], [3, 3]) == 1
matchUp([5, 3], [2, 2]) == 1
matchUp([5, 3], [1, 1]) == 1
matchUp([5, 3], [0, 0]) == 0
matchUp([4], [4]) == 0
matchUp([4], [5]) == 1
