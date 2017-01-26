

import Foundation

/*
 
 A sandwich is two pieces of bread with something in between. Return the string that is between the first and last appearance of "bread" in the given string, or return the empty string "" if there are not two pieces of bread.
 
 getSandwich("breadjambread") → "jam"
 getSandwich("xxbreadjambreadyy") → "jam"
 getSandwich("xxbreadyy") → ""
 
 */

func getSandwich(_ str: String) -> String {
    let bread = "bread"
    var result = ""
    
    var foundString = ""
    for c in str.characters.enumerated() {
        if foundString.contains(bread) {
            result.append("\(c.element)")
        } else {
            foundString.append("\(c.element)")
        }
    }
    
    var tmpResult = result
    result = ""
    while tmpResult.contains(bread) {
        result += "\(tmpResult[tmpResult.startIndex])"
        tmpResult.remove(at: tmpResult.startIndex)
    }
    
    if result.characters.count > 0 {
        result.remove(at: result.index(before: result.endIndex))
    }
    
    return result
}

getSandwich("breadjambread") == "jam"
getSandwich("xxbreadjambreadyy") == "jam"
getSandwich("xxbreadyy") == ""
getSandwich("xxbreadbreadjambreadyy") == "breadjam"
getSandwich("breadAbread") == "A"
getSandwich("breadbread") == ""
getSandwich("abcbreaz") == ""
getSandwich("xyz") == ""
getSandwich("") == ""
getSandwich("breadbreaxbread") == "breax"
getSandwich("breaxbreadybread") == "y"
getSandwich("breadbreadbreadbread") == "breadbread"




