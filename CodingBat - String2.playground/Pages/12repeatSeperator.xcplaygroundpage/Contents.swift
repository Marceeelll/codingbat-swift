

import Foundation

/*
 
 Given two strings, word and a separator sep, return a big string made of count occurrences of the word, separated by the separator string.
 
 repeatSeparator("Word", "X", 3) → "WordXWordXWord"
 repeatSeparator("This", "And", 2) → "ThisAndThis"
 repeatSeparator("This", "And", 1) → "This"
 
 */

func repeatSeparator(_ word: String, _ sep: String, _ count: Int) -> String {
    var result = ""
    
    for i in 0..<count {
        result.append(word)
        if i != count-1 {
            result.append(sep)
        }
    }
    
    return result
}

repeatSeparator("Word", "X", 3) == "WordXWordXWord"
repeatSeparator("This", "And", 2) == "ThisAndThis"
repeatSeparator("This", "And", 1) == "This"
repeatSeparator("Hi", "-n-", 2) == "Hi-n-Hi"
repeatSeparator("AAA", "", 1) == "AAA"
repeatSeparator("AAA", "", 0) == ""
repeatSeparator("A", "B", 5) == "ABABABABA"
repeatSeparator("abc", "XX", 3) == "abcXXabcXXabc"
repeatSeparator("abc", "XX", 2) == "abcXXabc"
repeatSeparator("abc", "XX", 1) == "abc"
repeatSeparator("XYZ", "a", 2) == "XYZaXYZ"
