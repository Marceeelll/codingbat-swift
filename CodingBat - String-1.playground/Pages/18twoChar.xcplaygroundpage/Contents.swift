

import Foundation

/*
 
 Given a string and an index, return a string length 2 starting at the given index. If the index is too big or too small to define a string length 2, use the first 2 chars. The string length will be at least 2.
 
 twoChar("java", 0) → "ja"
 twoChar("java", 2) → "va"
 twoChar("java", 3) → "ja"
 
 */

func twoChar(_ str: String, _ index: Int) -> String {
    var result = ""
    var currentIndex = str.startIndex
    
    if index < 0 || str.characters.count - 2 < index {
        var secondCharIndex = str.index(after: str.startIndex)
        secondCharIndex = str.index(after: secondCharIndex)
        return str.substring(to: secondCharIndex)
    } else {
        for _ in 0..<index {
            currentIndex = str.index(after: currentIndex)
        }
        result.append(str[currentIndex])
        currentIndex = str.index(after: currentIndex)
        result.append(str[currentIndex])
    }
    
    return result
}


twoChar("Hello", 5)
twoChar("Hello", -7)
twoChar("java",2)
twoChar("java", 0) == "ja"
twoChar("java", 2) == "va"
twoChar("java", 3) == "ja"
twoChar("Hello", 4) == "He"
twoChar("Hello", 5) == "He"
twoChar("Hello", -7) == "He"
twoChar("Hello", 6) == "He"
twoChar("Hello", -1) == "He"
twoChar("yay", 0) == "ya"



