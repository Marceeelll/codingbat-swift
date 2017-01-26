

import Foundation

/*
 
 Given a string and an int n, return a string made of the first and last n chars from the string. The string length will be at least n.
 
 nTwice("Hello", 2) → "Helo"
 nTwice("Chocolate", 3) → "Choate"
 nTwice("Chocolate", 1) → "Ce"
 
 */

func nTwice(_ str: String,_ n: Int) -> String {
    return ""
}

nTwice("Hello", 2)
nTwice("Hello", 2) == "Helo"
nTwice("Chocolate", 3) == "Choate"
nTwice("Chocolate", 1) == "Ce"
nTwice("Hello", 4) == "Hellello"
nTwice("Code", 4) == "CodeCode"
nTwice("Code", 2) == "Code"
