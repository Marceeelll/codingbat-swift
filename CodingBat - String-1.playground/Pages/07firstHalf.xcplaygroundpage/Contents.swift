

import Foundation

/*
 
 Given a string of even length, return the first half. So the string "WooHoo" yields "Woo".
 
 firstHalf("WooHoo") → "Woo"
 firstHalf("HelloThere") → "Hello"
 firstHalf("abcdef") → "abc"
 
 */

func firstHalf(_ str: String) -> String {
    var result = ""
    var currentStartIndex = str.startIndex
    var currentEndIndex = str.endIndex
    
    while currentStartIndex != currentEndIndex {
        currentEndIndex = str.index(before: currentEndIndex)
        result.append(str[currentStartIndex])
        currentStartIndex = str.index(after: currentStartIndex)
    }
    
    
    
    return result
}

firstHalf("WooHoo")
firstHalf("WooHoo") == "Woo"
firstHalf("HelloThere") == "Hello"
firstHalf("abcdef") == "abc"
