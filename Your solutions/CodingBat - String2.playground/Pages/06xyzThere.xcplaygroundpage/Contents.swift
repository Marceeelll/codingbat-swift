

import Foundation

/*
 
 Return true if the given string contains an appearance of "xyz" where the xyz is not directly preceeded by a period (.). So "xxyz" counts but "x.xyz" does not.
 
 xyzThere("abcxyz") → true
 xyzThere("abc.xyz") → false
 xyzThere("xyz.abc") → true
 
 */

func xyzThere(_ str: String) -> Bool {
    return false
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
