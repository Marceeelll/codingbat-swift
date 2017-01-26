

import Foundation

/*
 
 Given a string, return a version without both the first and last char of the string. The string may be any length, including 0.
 
 withouEnd2("Hello") → "ell"
 withouEnd2("abc") → "b"
 withouEnd2("ab") → ""
 
 */

func withouEnd2(_ str: String) -> String {
    var startIndex = str.startIndex
    var endIndex = str.endIndex
    
    if startIndex != endIndex {
        startIndex = str.index(after: startIndex)
        endIndex = str.index(before: endIndex)
    }
    
    if startIndex < endIndex {
        let range = Range(uncheckedBounds: (startIndex, endIndex))
        return str.substring(with: range)
    } else {
        return ""
    }
}

withouEnd2("Hello") == "ell"
withouEnd2("abc") == "b"
withouEnd2("ab") == ""
withouEnd2("a") == ""
withouEnd2("") == ""
withouEnd2("coldy") == "old"
withouEnd2("java code") == "ava cod"
