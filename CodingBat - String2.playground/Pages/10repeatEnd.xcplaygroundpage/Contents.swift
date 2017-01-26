

import Foundation

/*
 
 Given a string and an int n, return a string made of n repetitions of the last n characters of the string. You may assume that n is between 0 and the length of the string, inclusive.
 
 repeatEnd("Hello", 3) → "llollollo"
 repeatEnd("Hello", 2) → "lolo"
 repeatEnd("Hello", 1) → "o"
 
 */

func repeatEnd(_ str: String,_ n: Int) -> String {
    var result = ""
    let startIndex = str.index(str.endIndex, offsetBy: -n)
    
    for _ in 0..<n {
        result.append("\(str.substring(from: startIndex))")
    }
    
    return result
}

repeatEnd("Hello", 3) == "llollollo"
repeatEnd("Hello", 2) == "lolo"
repeatEnd("Hello", 1) == "o"
repeatEnd("Hello", 0) == ""
repeatEnd("abc", 3) == "abcabcabc"
repeatEnd("1234", 2) == "3434"
repeatEnd("1234", 3) == "234234234"
repeatEnd("", 0) == ""

