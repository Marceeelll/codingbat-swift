

import Foundation

/*
 
 Given a string, consider the prefix string made of the first N chars of the string. Does that prefix string appear somewhere else in the string? Assume that the string is not empty and that N is in the range 1..str.length().
 
 prefixAgain("abXYabc", 1) → true
 prefixAgain("abXYabc", 2) → true
 prefixAgain("abXYabc", 3) → false
 
 */

func prefixAgain(_ str: String, _ n: Int) -> Bool {
    if str.characters.count > n {
        let prefix = str.substring(to: str.index(str.startIndex, offsetBy: n))
        var currentIndex = str.startIndex
        
        var firstRound = true
        while currentIndex <= str.index(str.endIndex, offsetBy: -n) {
            var tmpString = str.substring(from: currentIndex)
            tmpString = tmpString.substring(to: prefix.endIndex)
            //print("hello")
            
            if !firstRound && tmpString == prefix {
                return true
            }
            firstRound = false
            
            currentIndex = str.index(after: currentIndex)
        }
    }
    return false
}


prefixAgain("abXYabc", 1) == true
prefixAgain("abXYabc", 2) == true
prefixAgain("abXYabc", 3) == false
prefixAgain("xyzxyxyxy", 2) == true
prefixAgain("xyzxyxyxy", 3) == false
prefixAgain("Hi12345Hi6789Hi10", 1) == true
prefixAgain("Hi12345Hi6789Hi10", 2) == true
prefixAgain("Hi12345Hi6789Hi10", 3) == true
prefixAgain("Hi12345Hi6789Hi10", 4) == false
prefixAgain("a", 1) == false
prefixAgain("aa", 1) == true
prefixAgain("ab", 1) == false
