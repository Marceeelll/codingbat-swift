

import Foundation

/*
 
 Given a string, return true if "bad" appears starting at index 0 or 1 in the string, such as with "badxxx" or "xbadxx" but not "xxbadxx". The string may be any length, including 0. Note: use .equals() to compare 2 strings.
 
 hasBad("badxx") → true
 hasBad("xbadxx") → true
 hasBad("xxbadxx") → false
 
 */

func hasBad(_ str: String) -> Bool {
    if str.characters.count >= "bad".characters.count {
        var currentEndIndex = str.startIndex
        for _ in "bad".characters {
            currentEndIndex = str.index(after: currentEndIndex)
        }
        
        var currentStartIndex = str.startIndex
        for _ in 0..<2 {
            print(currentEndIndex)
            if str.substring(with: Range(uncheckedBounds: (currentStartIndex, currentEndIndex))) == "bad" {
                return true
            }
            currentStartIndex = str.index(after: currentStartIndex)
            if str.endIndex > currentEndIndex {
                currentEndIndex = str.index(after: currentEndIndex)
            }
        }
    }
    
    return false
}

hasBad("badxx") == true
hasBad("xbadxx") == true
hasBad("xxbadxx") == false
hasBad("code") == false
hasBad("bad") == true
hasBad("ba") == false
hasBad("xba") == false
hasBad("xbad") == true
hasBad("") == false
hasBad("badyy") == true
