

import Foundation

/*
 
 Given 2 strings, a and b, return a new string made of the first char of a and the last char of b, so "yo" and "java" yields "ya". If either string is length 0, use '@' for its missing char.
 
 lastChars("last", "chars") → "ls"
 lastChars("yo", "java") → "ya"
 lastChars("hi", "") → "h@"
 
 */

func lastChars(_ a: String, _ b: String) -> String {
    var firstChar = ""
    var secondChar = ""
    
    if a.characters.count > 0 {
        firstChar = "\(a[a.startIndex])"
    } else {
        firstChar = "@"
    }
    if b.characters.count > 0 {
        secondChar = "\(b[b.index(before: b.endIndex)])"
    } else {
        secondChar = "@"
    }
    
    return "\(firstChar)\(secondChar)"
}

lastChars("last", "chars") == "ls"
lastChars("yo", "java") == "ya"
lastChars("hi", "") == "h@"
lastChars("", "hello") == "@o"
lastChars("", "") == "@@"
lastChars("kitten", "hi") == "ki"
lastChars("k", "zip") == "kp"
lastChars("kitten", "") == "k@"
lastChars("kitten", "zip") == "kp"


