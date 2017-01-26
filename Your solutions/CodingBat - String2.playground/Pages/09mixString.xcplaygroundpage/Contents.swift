

import Foundation

/*
 
 Given two strings, a and b, create a bigger string made of the first char of a, the first char of b, the second char of a, the second char of b, and so on. Any leftover chars go at the end of the result.
 
 mixString("abc", "xyz") → "axbycz"
 mixString("Hi", "There") → "HTihere"
 mixString("xxxx", "There") → "xTxhxexre"
 
 */

func mixString(_ a: String, _ b: String) -> String {
    return ""
}

mixString("xxx", "X") == "xXxx"
mixString("abc", "xyz") == "axbycz"
mixString("Hi", "There") == "HTihere"
mixString("xxxx", "There") == "xTxhxexre"
mixString("xxx", "X") == "xXxx"
mixString("2/", "27 around") == "22/7 around"
mixString("", "Hello") == "Hello"
mixString("Abc", "") == "Abc"
mixString("", "") == ""
mixString("a", "b") == "ab"
mixString("ax", "b") == "abx"
mixString("a", "bx") == "abx"
mixString("So", "Long") == "SLoong"
mixString("Long", "So") == "LSoong"



