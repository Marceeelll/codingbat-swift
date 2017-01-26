

import Foundation

/*
 
 Given a string, compute recursively (no loops) the number of times lowercase "hi" appears in the string.
 
 countHi("xxhixx") → 1
 countHi("xhixhix") → 2
 countHi("hi") → 1
 
 */

func countHi(_ str: String) -> Int {
    var tmp = str
    if tmp.characters.count <= 1 {
        return 0
    } else if tmp[tmp.startIndex] == "h" && tmp[tmp.index(after: tmp.startIndex)] == "i" {
        tmp.removeSubrange(Range(uncheckedBounds: (tmp.startIndex, tmp.index(after: tmp.startIndex))))
        return 1 + countHi(tmp)
    } else {
        tmp.remove(at: tmp.startIndex)
        return countHi(tmp)
    }
}

countHi("xxhixx") == 1
countHi("xhixhix") == 2
countHi("hi") == 1
countHi("hihih") == 2
countHi("h") == 0
countHi("") == 0
countHi("ihihihihih") == 4
countHi("ihihihihihi") == 5
countHi("hiAAhi12hi") == 3
countHi("xhixhxihihhhih") == 3
countHi("ship") == 1