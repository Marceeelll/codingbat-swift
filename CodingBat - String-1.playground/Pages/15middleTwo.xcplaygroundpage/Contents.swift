

import Foundation

/*
 
 Given a string of even length, return a string made of the middle two chars, so the string "string" yields "ri". The string length will be at least 2.
 
 middleTwo("string") → "ri"
 middleTwo("code") → "od"
 middleTwo("Practice") → "ct"
 
 */

func middleTwo(_ str: String) -> String {
    var currentEndIndex = str.endIndex
    var currentStartIndex = str.startIndex
    
    while currentEndIndex != currentStartIndex {
        currentStartIndex = str.index(after: currentStartIndex)
        currentEndIndex = str.index(before: currentEndIndex)
    }
    
    currentEndIndex = str.index(after: currentEndIndex)
    currentStartIndex = str.index(before: currentStartIndex)
    
    return str.substring(with: Range(uncheckedBounds: (currentStartIndex, currentEndIndex)))
}

middleTwo("string")
middleTwo("string") == "ri"
middleTwo("code") == "od"
middleTwo("Practice") == "ct"
