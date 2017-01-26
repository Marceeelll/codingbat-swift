

import Foundation

/*
 
 Given a string, return a string length 2 made of its first 2 chars. If the string length is less than 2, use '@' for the missing chars.
 
 atFirst("hello") → "he"
 atFirst("hi") → "hi"
 atFirst("h") → "h@"
 
 */

func atFirst(_ str: String) -> String {
    if str.characters.count == 0 {
        return "@@"
    } else if str.characters.count == 1 {
        return "\(str[str.startIndex])@"
    } else {
        var twoCharIndex = str.index(after: str.startIndex)
        twoCharIndex = str.index(after: twoCharIndex)
        
        return str.substring(to: twoCharIndex)
    }
}

atFirst("hello") == "he"
atFirst("hi") == "hi"
atFirst("h") == "h@"
atFirst("") == "@@"
atFirst("kitten") == "ki"
atFirst("java") == "ja"
atFirst("j") == "j@"

