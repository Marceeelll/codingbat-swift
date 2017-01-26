

import Foundation

/*
 
 Given a string, return a "rotated right 2" version where the last 2 chars are moved to the start. The string length will be at least 2.
 
 right2("Hello") → "loHel"
 right2("java") → "vaja"
 right2("Hi") → "Hi"
 
 */

func right2(_ str: String) -> String {
    var secondLastCharIndex = str.index(before: str.endIndex)
    secondLastCharIndex = str.index(before: secondLastCharIndex)
    return str.substring(from: secondLastCharIndex) + str.substring(to: secondLastCharIndex)
}

right2("Hello")
right2("Hello") == "loHel"
right2("java") == "vaja"
right2("Hi") == "Hi"
