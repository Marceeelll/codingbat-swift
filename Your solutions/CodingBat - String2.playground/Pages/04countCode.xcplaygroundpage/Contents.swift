

import Foundation

/*
 
 Return the number of times that the string "code" appears anywhere in the given string, except we'll accept any letter for the 'd', so "cope" and "cooe" count.
 
 countCode("aaacodebbb") → 1
 countCode("codexxcode") → 2
 countCode("cozexxcope") → 2
 
 */

func endOther(_ a: String, _ b: String) -> Bool {
    return false
}

endOther("Hiabc", "abc") == true
endOther("AbC", "HiaBc") == true
endOther("abc", "abXabc") == true
endOther("Hiabc", "abcd") == false
endOther("Hiabc", "bc") == true
endOther("Hiabcx", "bc") == false
endOther("abc", "abc") == true
endOther("xyz", "12xyz") == true
endOther("yz", "12xz") == false
endOther("Z", "12xz") == true
endOther("12", "12") == true
endOther("abcXYZ", "abcDEF") == false
endOther("ab", "ab12") == false
endOther("ab", "12ab") == true
