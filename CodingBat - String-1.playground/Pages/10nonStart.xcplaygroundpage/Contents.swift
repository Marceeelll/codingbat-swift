

import Foundation

/*
 
 Given 2 strings, return their concatenation, except omit the first char of each. The strings will be at least length 1.
 
 nonStart("Hello", "There") → "ellohere"
 nonStart("java", "code") → "avaode"
 nonStart("shotl", "java") → "hotlava"
 
 */

func nonStart(_ a: String, _ b: String) -> String {
    let secondCharIndex = a.index(after: a.startIndex)
    return a.substring(from: secondCharIndex) + b.substring(from: secondCharIndex)
}

nonStart("Hello", "There")
nonStart("Hello", "There") == "ellohere"
nonStart("java", "code") == "avaode"
nonStart("shotl", "java") == "hotlava"
