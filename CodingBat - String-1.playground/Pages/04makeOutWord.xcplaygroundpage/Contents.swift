

import Foundation

/*
 
 Given an "out" string length 4, such as "<<>>", and a word, return a new string where the word is in the middle of the out string, e.g. "<<word>>". Note: use str.substring(i, j) to extract the String starting at index i and going up to but not including index j.
 
 makeOutWord("<<>>", "Yay") → "<<Yay>>"
 makeOutWord("<<>>", "WooHoo") → "<<WooHoo>>"
 makeOutWord("[[]]", "word") → "[[word]]"
 
 */

func makeOutWord(_ str1: String, _ str2: String) -> String {
    var currentIndex = str1.startIndex
    let firstChar: Character = str1[currentIndex]
    var result = str1
    
    while firstChar == str1[currentIndex] {
        currentIndex = str1.index(after: currentIndex)
    }
    
    result.insert(contentsOf: str2.characters, at: currentIndex)
    
    return result
}

makeOutWord("<<>>", "Yay")
makeOutWord("<<>>", "Yay") == "<<Yay>>"
makeOutWord("<<>>", "WooHoo") == "<<WooHoo>>"
makeOutWord("[[]]", "word") == "[[word]]"
