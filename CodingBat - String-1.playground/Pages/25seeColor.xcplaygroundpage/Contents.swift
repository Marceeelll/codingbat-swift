

import Foundation

/*
 
 Given a string, if the string begins with "red" or "blue" return that color string, otherwise return the empty string.
 
 seeColor("redxx") → "red"
 seeColor("xxred") → ""
 seeColor("blueTimes") → "blue"
 
 */

func seeColor(_ str: String) -> String {
    let colors = ["red", "blue"]
    
    for color in colors {
        let lastIndex = color.endIndex
        
        if str.characters.count >= color.characters.count {
            if str.substring(to: lastIndex) == color {
                return color
            }
        }
    }
    
    return ""
}

seeColor("redxx") == "red"
seeColor("xxred") == ""
seeColor("blueTimes") == "blue"
seeColor("NoColor") == ""
seeColor("red") == "red"
seeColor("re") == ""
seeColor("blu") == ""
seeColor("blue") == "blue"
seeColor("a") == ""
seeColor("") == ""
seeColor("xyzred") == ""