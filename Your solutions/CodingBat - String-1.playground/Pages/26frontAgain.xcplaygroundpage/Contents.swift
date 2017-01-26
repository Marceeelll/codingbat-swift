

import Foundation

/*
 
 Given a string, return true if the first 2 chars in the string also appear at the end of the string, such as with "edited".
 
 frontAgain("edited") → true
 frontAgain("edit") → false
 frontAgain("ed") → true
 
 */

func frontAgain(_ str: String) -> Bool {
    return false
}


frontAgain("edited") == true
frontAgain("edit") == false
frontAgain("ed") == true
frontAgain("jj") == true
frontAgain("jjj") == true
frontAgain("jjjj") == true
frontAgain("jjjk") == false
frontAgain("x") == false
frontAgain("") == false
frontAgain("java") == false
frontAgain("javaja") == true

