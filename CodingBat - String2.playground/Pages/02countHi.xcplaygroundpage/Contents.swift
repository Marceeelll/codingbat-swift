

import Foundation

/*
 
 Return the number of times that the string "hi" appears anywhere in the given string.
 
 countHi("abc hi ho") → 1
 countHi("ABChi hi") → 2
 countHi("hihi") → 2
 
 */

func countHi(_ str: String) -> Int {
    var countHI = 0
    var currentIndex = str.startIndex
    
    if str.characters.count >= "hi".characters.count {
        while currentIndex < str.index(str.endIndex, offsetBy: -1) {
            var tmp = str
            tmp = tmp.substring(from: currentIndex)
            tmp = tmp.substring(to: "hi".endIndex)
            
            if tmp == "hi" {
                countHI += 1
            }
            
            currentIndex = str.index(after: currentIndex)
        }
    }
    
    return countHI
}


countHi("abc hi ho") == 1
countHi("ABChi hi") == 2
countHi("hihi") == 2
countHi("hiHIhi") == 2
countHi("") == 0
countHi("h") == 0
countHi("hi") == 1
countHi("Hi is no HI on ahI") == 0
countHi("hiho not HOHIhi") == 2




