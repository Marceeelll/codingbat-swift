

import Foundation

/*
 
 Given a string, if one or both of the first 2 chars is 'x', return the string without those 'x' chars, and otherwise return the string unchanged. This is a little harder than it looks.
 
 withoutX2("xHi") → "Hi"
 withoutX2("Hxi") → "Hi"
 withoutX2("Hi") → "Hi"
 
 */

func withoutX2(_ str: String) -> String {
    var result = str
    
    if result.characters.count > 1 {
        if result[result.index(result.startIndex, offsetBy: 1)] == "x" {
            result = "\(result[result.startIndex])\(result.substring(from: result.index(result.startIndex, offsetBy: 2)))"
        }
    }
    if result.characters.count > 0 {
        if result[result.startIndex] == "x" {
            result = result.substring(from: result.index(result.startIndex, offsetBy: 1))
        }
    }
    
    return result
}

withoutX2("xHi") == "Hi"
withoutX2("Hxi") == "Hi"
withoutX2("Hi") == "Hi"
withoutX2("xxHi") == "Hi"
withoutX2("Hix") == "Hix"
withoutX2("xaxb") == "axb"
withoutX2("xx") == ""
withoutX2("x") == ""
withoutX2("") == ""
withoutX2("Hello") == "Hello"
withoutX2("Hexllo") == "Hexllo"
withoutX2("xHxllo") == "Hxllo"
