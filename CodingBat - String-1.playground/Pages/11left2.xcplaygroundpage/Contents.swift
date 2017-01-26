

import Foundation

/*
 
 Given a string, return a "rotated left 2" version where the first 2 chars are moved to the end. The string length will be at least 2.
 
 left2("Hello") → "lloHe"
 left2("java") → "vaja"
 left2("Hi") → "Hi"
 
 */

func left2(_ str: String) -> String {
    var seoncCharIndex = str.index(after: str.startIndex)
    seoncCharIndex = str.index(after: seoncCharIndex)
    return str.substring(from: seoncCharIndex) + str.substring(to: seoncCharIndex)
}

left2("Hello")
left2("Hello") == "lloHe"
left2("java") == "vaja"
left2("Hi") == "Hi"
