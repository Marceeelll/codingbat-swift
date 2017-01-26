

import Foundation

/*
 
 Given n>=0, create an array length n*n with the following pattern, shown here for n=3 : {0, 0, 1,    0, 2, 1,    3, 2, 1} (spaces added to show the 3 groups).
 
 squareUp(3) → [0, 0, 1, 0, 2, 1, 3, 2, 1]
 squareUp(2) → [0, 1, 2, 1]
 squareUp(4) → [0, 0, 0, 1, 0, 0, 2, 1, 0, 3, 2, 1, 4, 3, 2, 1]
 
 */

func squareUp(_ n: Int) -> [Int] {
    var result = [Int]()
    
    for m in 0..<n {
        var tmp = [Int](repeatElement(0, count: n))
        
        for i in 0...m {
            tmp[i] = i+1
        }
        
        result.append(contentsOf: tmp.reversed())
    }
    
    return result
}

squareUp(3) == [0, 0, 1, 0, 2, 1, 3, 2, 1]
squareUp(2) == [0, 1, 2, 1]
squareUp(4) == [0, 0, 0, 1, 0, 0, 2, 1, 0, 3, 2, 1, 4, 3, 2, 1]
squareUp(1) == [1]
squareUp(0) == []
squareUp(6) == [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 1, 0, 0, 0, 3, 2, 1, 0, 0, 4, 3, 2, 1, 0, 5, 4, 3, 2, 1, 6, 5, 4, 3, 2, 1]