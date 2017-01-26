

import Foundation

/*
 
 Given a string of odd length, return the string length 3 from its middle, so "Candy" yields "and". The string length will be at least 3.
 
 middleThree("Candy") → "and"
 middleThree("and") → "and"
 middleThree("solving") → "lvi"
 
 */

func middleThree(_ str: String) -> String {
    var result = ""
    var middleIndex = str.startIndex
    
    for _ in 0..<str.characters.count/2 {
        middleIndex = str.index(after: middleIndex)
    }
    
    result.append(str[str.index(before: middleIndex)])
    result.append(str[middleIndex])
    result.append(str[str.index(after: middleIndex)])
    
    return result
}


middleThree("Candy") == "and"
middleThree("and") == "and"
middleThree("solving") == "lvi"
middleThree("Hi yet Hi") == "yet"
middleThree("java yet java") == "yet"
middleThree("Chocolate") == "col"
middleThree("XabcxyzabcX") == "xyz"


