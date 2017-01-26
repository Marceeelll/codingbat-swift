

import Foundation

/*
 
 We'll say that a String is xy-balanced if for all the 'x' chars in the string, there exists a 'y' char somewhere later in the string. So "xxy" is balanced, but "xyx" is not. One 'y' can balance multiple 'x's. Return true if the given string is xy-balanced.
 
 xyBalance("aaxbby") → true
 xyBalance("aaxbb") → false
 xyBalance("yaaxbb") → false
 
 */

func xyBalance(_ str: String) -> Bool {
    return false
}

xyBalance("aaxbby") == true
xyBalance("aaxbb") == false
xyBalance("yaaxbb") == false
xyBalance("yaaxbby") == true
xyBalance("xaxxbby") == true
xyBalance("xaxxbbyx") == false
xyBalance("xxbxy") == true
xyBalance("xxbx") == false
xyBalance("bbb") == true
xyBalance("bxbb") == false
xyBalance("bxyb") == true
xyBalance("xy") == true
xyBalance("y") == true
xyBalance("x") == false
xyBalance("") == true
xyBalance("yxyxyxyx") == false
xyBalance("yxyxyxyxy") == true
xyBalance("12xabxxydxyxyzz") == true



