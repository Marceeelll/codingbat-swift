

import Foundation

/*
 
 For each multiple of 10 in the given array, change all the values following it to be that multiple of 10, until encountering another multiple of 10. So {2, 10, 3, 4, 20, 5} yields {2, 10, 10, 10, 20, 20}.
 
 tenRun([2, 10, 3, 4, 20, 5]) → [2, 10, 10, 10, 20, 20]
 tenRun([10, 1, 20, 2]) → [10, 10, 20, 20]
 tenRun([10, 1, 9, 20]) → [10, 10, 10, 20]
 
 */

func tenRun(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    var tenMultiplikator = 0
    var foundZero = false
    
    for num in nums {
        if num % 10 == 0 {
            tenMultiplikator = num
            foundZero = num == 0 ? true : false
        }
        if tenMultiplikator == 0 && !foundZero {
            result.append(num)
            print("2")
        } else {
            result.append(tenMultiplikator)
            print("3")
        }
    }
    
    return result
}

tenRun([2, 10, 3, 4, 20, 5])
tenRun([2, 10, 3, 4, 20, 5]) == [2, 10, 10, 10, 20, 20]
tenRun([10, 1, 20, 2]) == [10, 10, 20, 20]
tenRun([10, 1, 9, 20]) == [10, 10, 10, 20]
tenRun([1, 20, 50, 1]) == [1, 20, 50, 50]
tenRun([10, 10]) == [10, 10]
tenRun([10, 2]) == [10, 10]
tenRun([0, 2]) == [0, 0]
tenRun([1, 2]) == [1, 2]
tenRun([1]) == [1]
tenRun([]) == []
