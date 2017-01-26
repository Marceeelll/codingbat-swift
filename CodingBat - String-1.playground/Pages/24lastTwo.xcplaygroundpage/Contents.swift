

import Foundation

/*
 
 Given a string of any length, return a new string where the last 2 chars, if present, are swapped, so "coding" yields "codign".
 
 lastTwo("coding") → "codign"
 lastTwo("cat") → "cta"
 lastTwo("ab") → "ba"
 
 */

func lastTwo(_ str: String) -> String {
    var result = ""
    
    if str.characters.count >= 2 {
        var index: String.Index = str.index(before: str.endIndex)
        let lastOne = str[index]
        index = str.index(before: index)
        let secondLastOne = str[index]
        
        print("l: \(lastOne) sl: \(secondLastOne)")
        
        result = str.substring(to: index)
        result += "\(lastOne)\(secondLastOne)"
    } else {
        result = str
    }
    
    return result
}

lastTwo("coding") == "codign"
lastTwo("cat") == "cta"
lastTwo("ab") == "ba"
lastTwo("a") == "a"
lastTwo("") == ""


