

import Foundation

/*
 
 Given a string, return a new string made of 3 copies of the first 2 chars of the original string. The string may be any length. If there are fewer than 2 chars, use whatever is there.
 
 extraFront("Hello") → "HeHeHe"
 extraFront("ab") → "ababab"
 extraFront("H") → "HHH"
 
 */

func extraFront(_ str: String) -> String {
    
    if str.characters.count == 0 {
        return ""
    } else if str.characters.count == 1 {
        return str + str + str
    } else {
        var currentIndex = str.index(after: str.startIndex)
        currentIndex = str.index(after: currentIndex)
        let res = str.substring(to: currentIndex)
        
        return res + res + res
    }
    
}

extraFront("Hello")
extraFront("Hello") == "HeHeHe"
extraFront("ab") == "ababab"
extraFront("H") == "HHH"
extraFront("") == ""
extraFront("Candy") == "CaCaCa"
extraFront("Code") == "CoCoCo"
