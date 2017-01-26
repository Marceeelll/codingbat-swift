

import Foundation

/*
 
 Given start and end numbers, return a new array containing the sequence of integers from start up to but not including end, so start=5 and end=10 yields {5, 6, 7, 8, 9}. The end number will be greater or equal to the start number. Note that a length-0 array is valid. (See also: FizzBuzz Code)
 
 fizzArray3(5, 10) → [5, 6, 7, 8, 9]
 fizzArray3(11, 18) → [11, 12, 13, 14, 15, 16, 17]
 fizzArray3(1, 3) → [1, 2]
 
 */

func fizzArray3(_ start: Int, _ end: Int) -> [Int] {
    var result = [Int]()
    for i in start..<end {
        result.append(i)
    }
    return result
}



fizzArray3(5, 10) == [5, 6, 7, 8, 9]
fizzArray3(11, 18) == [11, 12, 13, 14, 15, 16, 17]
fizzArray3(1, 3) == [1, 2]
fizzArray3(1, 2) == [1]
fizzArray3(1, 1) == []
fizzArray3(1000, 1005) == [1000, 1001, 1002, 1003, 1004]



