

import Foundation

/*
 
 Given a string, return a new string made of 3 copies of the last 2 chars of the original string. The string length will be at least 2.
 
 extraEnd("Hello") → "lololo"
 extraEnd("ab") → "ababab"
 extraEnd("Hi") → "HiHiHi"
 
 */
func extraEnd(_ str: String) -> String {
    var result = ""
    var indexOfLastTwoChars = str.endIndex
    
    for _ in 0..<2 {
        indexOfLastTwoChars = str.index(before: indexOfLastTwoChars)
    }
    
    let last2Chars = str.substring(from: indexOfLastTwoChars)
    
    for _ in 0..<3 {
        result.append(last2Chars)
    }
    
    return result
}

extraEnd("Hello")
extraEnd("Hello") == "lololo"
extraEnd("ab") == "ababab"
extraEnd("Hi") == "HiHiHi"
