

import Foundation

/*
 
 Return true if the string "cat" and "dog" appear the same number of times in the given string.
 
 catDog("catdog") → true
 catDog("catcat") → false
 catDog("1cat1cadodog") → true
 
 */

func catDog(_ str: String) -> Bool {
    return false
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






