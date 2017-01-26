

import Foundation

/*
 
 Return true if the string "cat" and "dog" appear the same number of times in the given string.
 
 catDog("catdog") → true
 catDog("catcat") → false
 catDog("1cat1cadodog") → true
 
 */

func catDog(_ str: String) -> Bool {
    var countDog = 0
    var countCat = 0
    var currentIndex = str.startIndex
    
    if str.characters.count >= 3 {
        while currentIndex <= str.index(str.endIndex, offsetBy: -3) {
            var tmpStr = str
            tmpStr = tmpStr.substring(from: currentIndex)
            tmpStr = tmpStr.substring(to: tmpStr.index(tmpStr.startIndex, offsetBy: 3))
            
            if tmpStr == "cat" {
                countCat += 1
            } else if tmpStr == "dog" {
                countDog += 1
            }
            
            currentIndex = str.index(after: currentIndex)
        }
    }
    
    return countDog == countCat
}


catDog("catdog") == true
catDog("catcat") == false
catDog("1cat1cadodog") == true
catDog("catxxdogxxxdog") == false
catDog("catxdogxdogxcat") == true
catDog("catxdogxdogxca") == false
catDog("dogdogcat") == false
catDog("dogogcat") == true
catDog("dog") == false
catDog("cat") == false
catDog("ca") == true
catDog("c") == true
catDog("") == true






