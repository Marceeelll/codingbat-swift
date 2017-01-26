

import Foundation

/*
 
 Given a string, return a version without the first and last char, so "Hello" yields "ell". The string length will be at least 2.
 
 withoutEnd("Hello") → "ell"
 withoutEnd("java") → "av"
 withoutEnd("coding") → "odin"
 
 */

func withoutEnd(_ str: String) -> String {
    var result = ""
    var currentIndex = str.startIndex
    var endIndex = str.endIndex
    
    currentIndex = str.index(after: currentIndex)
    endIndex = str.index(before: endIndex)
    
    while currentIndex != endIndex {
        result.append(str[currentIndex])
        currentIndex = str.index(after: currentIndex)
    }
    
    return result
}
withoutEnd("Hello")
withoutEnd("Hello") == "ell"
withoutEnd("java") == "av"
withoutEnd("coding") == "odin"
