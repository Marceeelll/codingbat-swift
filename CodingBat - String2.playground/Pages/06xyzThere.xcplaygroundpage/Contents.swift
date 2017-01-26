

import Foundation

/*
 
 Return true if the given string contains an appearance of "xyz" where the xyz is not directly preceeded by a period (.). So "xxyz" counts but "x.xyz" does not.
 
 xyzThere("abcxyz") → true
 xyzThere("abc.xyz") → false
 xyzThere("xyz.abc") → true
 
 */

func xyzThere(_ str: String) -> Bool {
    var foundXYZ = false
    
    if str.characters.count >= 3 {
        var currentIndex = str.startIndex
        while currentIndex < str.index(str.endIndex, offsetBy: -2) {
            var tmpStr = str
            tmpStr = tmpStr.substring(from: currentIndex)
            tmpStr = tmpStr.substring(to: tmpStr.index(tmpStr.startIndex, offsetBy: 3))
            
            print(tmpStr)
            if tmpStr == "xyz" {
                if str.startIndex != currentIndex {
                    if str[str.index(before: currentIndex)] != "." {
                        foundXYZ = true
                    }
                } else {
                    foundXYZ = true
                }
            }
            
            currentIndex = str.index(after: currentIndex)
        }
    }
    
    return foundXYZ
}

xyzThere("abcxyz") == true
xyzThere("abc.xyz") == false
xyzThere("xyz.abc") == true
xyzThere("abcxy") == false
xyzThere("xyz") == true
xyzThere("xy") == false
xyzThere("x") == false
xyzThere("") == false
xyzThere("abc.xyzxyz") == true
xyzThere("abc.xxyz") == true
xyzThere(".xyz") == false
xyzThere("12.xyz") == false
xyzThere("12xyz") == true
xyzThere("1.xyz.xyz2.xyz") == false
