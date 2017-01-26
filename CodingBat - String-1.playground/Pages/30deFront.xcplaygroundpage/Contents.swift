

import Foundation

/*
 
 Given a string, return a version without the first 2 chars. Except keep the first char if it is 'a' and keep the second char if it is 'b'. The string may be any length. Harder than it looks.
 
 deFront("Hello") → "llo"
 deFront("java") → "va"
 deFront("away") → "aay"
 
 */

func deFront(_ str: String) -> String {
    var result = ""
    
    if str.characters.count == 1 {
        if str[str.startIndex] == "a" {
            result += "a"
        }
    } else if str.characters.count >= 2 {
        if str[str.startIndex] == "a" {
            result += "a"
        }
        if str[str.index(after: str.startIndex)] == "b" {
            result += "b"
        }
        
        let secondIndex = str.index(after: str.startIndex)
        result += str.substring(from: str.index(after: secondIndex))
    }
    
    return result
}

deFront("Hello") == "llo"
deFront("java") == "va"
deFront("away") == "aay"
deFront("axy") == "ay"
deFront("abc") == "abc"
deFront("xby") == "by"
deFront("ab") == "ab"
deFront("ax") == "a"
deFront("axb") == "ab"
deFront("aaa") == "aa"
deFront("xbc") == "bc"
deFront("bbb") == "bb"
deFront("bazz") == "zz"
deFront("ba") == ""
deFront("abxyz") == "abxyz"
deFront("hi") == ""
deFront("his") == "s"
deFront("xz") == ""
deFront("zzz") == "z"



