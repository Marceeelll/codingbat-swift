

import Foundation

/*
 
 Given a string, return true if it ends in "ly".
 
 endsLy("oddly") → true
 endsLy("y") → false
 endsLy("oddy") → false
 
 */

func endsLy(_ str: String) -> Bool {
    var secondLastCharIndex = str.endIndex
    
    if str.characters.count >= 2 {
        secondLastCharIndex = str.index(before: secondLastCharIndex)
        secondLastCharIndex = str.index(before: secondLastCharIndex)
        
        if str.substring(from: secondLastCharIndex) == "ly" {
            return true
        }
    }
    return false
}


endsLy("oddly") == true
endsLy("y") == false
endsLy("oddy") == false
