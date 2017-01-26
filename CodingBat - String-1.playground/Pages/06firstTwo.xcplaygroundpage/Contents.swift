

import Foundation

/*
 
 Given a string, return the string made of its first two chars, so the String "Hello" yields "He". If the string is shorter than length 2, return whatever there is, so "X" yields "X", and the empty string "" yields the empty string "". Note that str.length() returns the length of a string.
 
 firstTwo("Hello") → "He"
 firstTwo("abcdefg") → "ab"
 firstTwo("ab") → "ab"
 
 */

func firstTwo(_ str: String) -> String {
    var twoCharactersIndex = str.startIndex
    for _ in 0..<2 {
        twoCharactersIndex = str.index(after: twoCharactersIndex)
    }
    
    return str.substring(to: twoCharactersIndex)
}

firstTwo("Hello")
firstTwo("Hello") == "He"
firstTwo("abcdefg") == "ab"
firstTwo("ab") == "ab"
