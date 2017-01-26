

import Foundation

/*
 
 Given a string, compute recursively (no loops) a new string where all the lowercase 'x' chars have been changed to 'y' chars.
 
 changeXY("codex") → "codey"
 changeXY("xxhixx") → "yyhiyy"
 changeXY("xhixhix") → "yhiyhiy"
 
 */

func changeXY(_ str: String) -> String {
    if str.characters.count > 0 {
        return changeXY(str, currentIndex: str.startIndex)
    } else {
        return ""
    }
}

func changeXY(_ str: String, currentIndex: String.Index) -> String {
    let result = str
    if currentIndex == str.endIndex {
        return result
    } else if str[currentIndex] == "x" {
        var tmp = str.substring(to: currentIndex)
        tmp.append("y")
        
        if currentIndex != str.endIndex {
            tmp.append(str.substring(from: str.index(after: currentIndex)))
        }
        
        return changeXY(tmp, currentIndex: str.index(after: currentIndex))
    } else {
        return changeXY(str, currentIndex: str.index(after: currentIndex))
    }
}


changeXY("codex") == "codey"
changeXY("xxhixx") == "yyhiyy"
changeXY("xhixhix") == "yhiyhiy"
changeXY("hiy") == "hiy"
changeXY("h") == "h"
changeXY("x") == "y"
changeXY("") == ""
changeXY("xxx") == "yyy"
changeXY("yyhxyi") == "yyhyyi"
changeXY("hihi") == "hihi"

