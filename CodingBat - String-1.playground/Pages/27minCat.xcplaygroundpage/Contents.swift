

import Foundation

/*
 
 Given two strings, append them together (known as "concatenation") and return the result. However, if the strings are different lengths, omit chars from the longer string so it is the same length as the shorter string. So "Hello" and "Hi" yield "loHi". The strings may be any length.
 
 minCat("Hello", "Hi") → "loHi"
 minCat("Hello", "java") → "ellojava"
 minCat("java", "Hello") → "javaello"
 
 */

func minCat(_ a: String, _ b: String) -> String {
    var shortString = ""
    var longString = ""
    var test = 0
    
    if a.characters.count > b.characters.count {
        shortString = b
        longString = a
    } else {
        shortString = a
        longString = b
        test = 1
    }
    
    while shortString.characters.count != longString.characters.count {
        longString.remove(at: longString.startIndex)
    }
    
    if test == 0 {
        return "\(longString)\(shortString)"
    } else {
        return "\(shortString)\(longString)"
    }
}


minCat("Hello", "Hi") == "loHi"
minCat("Hello", "java") == "ellojava"
minCat("java", "Hello") == "javaello"
minCat("abc", "x") == "cx"
minCat("x", "abc") == "xc"
minCat("abc", "") == ""


