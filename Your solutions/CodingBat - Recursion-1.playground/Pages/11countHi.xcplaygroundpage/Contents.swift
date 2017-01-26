

import Foundation

/*
 
 Given a string, compute recursively (no loops) the number of times lowercase "hi" appears in the string.
 
 countHi("xxhixx") → 1
 countHi("xhixhix") → 2
 countHi("hi") → 1
 
 */

func countHi(_ str: String) -> Int {
    return -1
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
