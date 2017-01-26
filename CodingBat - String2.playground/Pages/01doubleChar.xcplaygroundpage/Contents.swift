

import UIKit

/*
 
 
 Given a string, return a string where for every char in the original, there are two chars.
 
 doubleChar("The") → "TThhee"
 doubleChar("AAbb") → "AAAAbbbb"
 doubleChar("Hi-There") → "HHii--TThheerree"
 
 */

func doubleChar(_ str: String) -> String {
    var result = ""
    
    for c in str.characters.enumerated() {
        result.append("\(c.element)\(c.element)")
    }
    
    return result
}

doubleChar("The") == "TThhee"
doubleChar("AAbb") == "AAAAbbbb"
doubleChar("Hi-There") == "HHii--TThheerree"
doubleChar("Word!") == "WWoorrdd!!"
doubleChar("!!") == "!!!!"
doubleChar("") == ""
doubleChar("a") == "aa"
doubleChar(".") == ".."
doubleChar("aa") == "aaaa"