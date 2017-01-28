

import Foundation

/*
 
 We'll say that a "mirror" section in an array is a group of contiguous elements such that somewhere in the array, the same group appears in reverse order. For example, the largest mirror section in {1, 2, 3, 8, 9, 3, 2, 1} is length 3 (the {1, 2, 3} part). Return the size of the largest mirror section found in the given array.
 
 maxMirror([1, 2, 3, 8, 9, 3, 2, 1]) → 3
 maxMirror([1, 2, 1, 4]) → 3
 maxMirror([7, 1, 2, 9, 7, 2, 1]) → 2
 
 */

func maxMirror(_ nums: [Int]) -> Int {
    var maxFoundedMatches = 0
    var array1 = [Int]()
    var array2 = [Int]()
    
    for frontStart in 0..<nums.count {
        
        for endStart in (0..<nums.count).reversed() {
            array1 = []
            
            for i in frontStart..<nums.count {
                var runFound = 0
                array1.append(nums[i])
                array2 = []
                
                for m in (endStart..<nums.count) {
                    array2.insert(nums[m], at: 0)
                    if array1 == array2 {
                        runFound = array1.count
                    }
                    if maxFoundedMatches < runFound { maxFoundedMatches = runFound }
                }
            }
            
        }
    }
    
    return maxFoundedMatches
}

maxMirror([1, 2, 3, 8, 9, 3, 2, 1]) == 3
maxMirror([1, 2, 1, 4]) == 3
maxMirror([7, 1, 2, 9, 7, 2, 1]) == 2
maxMirror([21, 22, 9, 8, 7, 6, 23, 24, 6, 7, 8, 9, 25, 7, 8, 9]) == 4
maxMirror([1, 2, 1, 20, 21, 1, 2, 1, 2, 23, 24, 2, 1, 2, 1, 25]) == 4
maxMirror([1, 2, 3, 2, 1]) == 5
maxMirror([1, 2, 3, 3, 8]) == 2
maxMirror([1, 2, 7, 8, 1, 7, 2]) == 2
maxMirror([1, 1, 1]) == 3
maxMirror([1]) == 1
maxMirror([]) == 0
maxMirror([9, 1, 1, 4, 2, 1, 1, 1]) == 3
maxMirror([5, 9, 9, 4, 5, 4, 9, 9, 2]) == 7
maxMirror([5, 9, 9, 6, 5, 4, 9, 9, 2]) == 2
maxMirror([5, 9, 1, 6, 5, 4, 1, 9, 5]) == 3
