

import Foundation

/*
 
 Given two strings, append them together (known as "concatenation") and return the result. However, if the concatenation creates a double-char, then omit one of the chars, so "abc" and "cat" yields "abcat".
 
 conCat("abc", "cat") → "abcat"
 conCat("dog", "cat") → "dogcat"
 conCat("abc", "") → "abc"
 
 */

func conCat(_ a: String, _ b: String) -> String {
    var result = ""
    var aLastChar = ""
    var bFirstChar = ""
    
    if a.characters.count > 0 {
        aLastChar = "\(a[a.index(before: a.endIndex)])"
    }
    if b.characters.count > 0 {
        bFirstChar = "\(b[b.startIndex])"
    }
    
    if aLastChar == bFirstChar {
        result = "\(a)\(b.substring(from: b.index(after: b.startIndex)))"
    } else {
        result = "\(a)\(b)"
    }
    
    return result
}


conCat("abc", "cat") == "abcat"
conCat("dog", "cat") == "dogcat"
conCat("abc", "") == "abc"
conCat("", "cat") == "cat"
conCat("pig", "g") == "pig"
conCat("pig", "doggy") == "pigdoggy"


