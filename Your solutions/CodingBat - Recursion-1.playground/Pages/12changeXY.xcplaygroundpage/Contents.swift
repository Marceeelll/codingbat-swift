

import Foundation

/*
 
 Given a string, compute recursively (no loops) a new string where all the lowercase 'x' chars have been changed to 'y' chars.
 
 changeXY("codex") → "codey"
 changeXY("xxhixx") → "yyhiyy"
 changeXY("xhixhix") → "yhiyhiy"
 
 */

func changeXY(_ str: String) -> String {
    return ""
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