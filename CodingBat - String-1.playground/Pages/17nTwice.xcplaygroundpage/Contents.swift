

import Foundation

/*
 
 Given a string and an int n, return a string made of the first and last n chars from the string. The string length will be at least n.
 
 nTwice("Hello", 2) → "Helo"
 nTwice("Chocolate", 3) → "Choate"
 nTwice("Chocolate", 1) → "Ce"
 
 */

func nTwice(_ str: String,_ n: Int) -> String {
    var result1 = ""
    var result2 = ""
    var currentStartIndex = str.startIndex
    var currentEndIndex = str.index(before: str.endIndex)
    
    for _ in 0..<n {
        result1.append(str[currentStartIndex])
        result2.append(str[currentEndIndex])
        
        // Absicherung: damit nicht vor den startIndex oder hinter den endIndex gelaufen wird
        if currentStartIndex < str.endIndex {
            currentStartIndex = str.index(after: currentStartIndex)
        }
        if currentEndIndex > str.startIndex {
            currentEndIndex = str.index(before: currentEndIndex)
        }
    }
    
    
    return result1 + String(result2.characters.reversed())
}

nTwice("Hello", 2)
nTwice("Hello", 2) == "Helo"
nTwice("Chocolate", 3) == "Choate"
nTwice("Chocolate", 1) == "Ce"
nTwice("Hello", 4) == "Hellello"
nTwice("Code", 4) == "CodeCode"
nTwice("Code", 2) == "Code"