

import Foundation

/*
 
 Given a string, if the first or last chars are 'x', return the string without those 'x' chars, and otherwise return the string unchanged.
 
 withoutX("xHix") → "Hi"
 withoutX("xHi") → "Hi"
 withoutX("Hxix") → "Hxi"
 
 */

func withoutX(_ str: String) -> String {
    var result = str
    
    if result.characters.count > 0 {
        if result[str.startIndex] == "x" {
            result = result.substring(from: result.index(result.startIndex, offsetBy: 1))
        }
    }
    if result.characters.count > 0 {
        if result[result.index(result.endIndex, offsetBy: -1)] == "x" {
            result = result.substring(to: result.index(result.endIndex, offsetBy: -1))
        }
    }
    
    return result
}

withoutX("xHix")

withoutX("xHix") == "Hi"
withoutX("xHi") == "Hi"
withoutX("Hxix") == "Hxi"
withoutX("Hi") == "Hi"
withoutX("xxHi") == "xHi"
withoutX("Hix") == "Hi"
withoutX("xaxbx") == "axb"
withoutX("xx") == ""
withoutX("x") == ""
withoutX("") == ""
withoutX("Hello") == "Hello"
withoutX("Hexllo") == "Hexllo"
