

import Foundation

/*
 
 Return true if the given string contains a "bob" string, but where the middle 'o' char can be any char.
 
 bobThere("abcbob") → true
 bobThere("b9b") → true
 bobThere("bac") → false
 
 */

func bobThere(_ str: String) -> Bool {
    
    if str.characters.count >= 3 {
        var currentIndex = str.startIndex
        while currentIndex < str.index(str.endIndex, offsetBy: -2) {
            let tmpString  = "\(str[currentIndex])\(str[str.index(currentIndex, offsetBy: 2)])"
            if tmpString == "bb" {
                return true
            }
            currentIndex = str.index(after: currentIndex)
        }
    }
    
    return false
}

bobThere("abcbob") == true
bobThere("b9b") == true
bobThere("bac") == false
bobThere("bbb") == true
bobThere("abcdefb") == false
bobThere("123abcbcdbabxyz") == true
bobThere("b12") == false
bobThere("b1b") == true
bobThere("b12b1b") == true
bobThere("bbc") == false
bobThere("bbb") == true
bobThere("bb") == false
bobThere("b") == false


