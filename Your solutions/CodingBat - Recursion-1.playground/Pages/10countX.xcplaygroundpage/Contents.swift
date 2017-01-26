

import Foundation

/*
 
 Given a string, compute recursively (no loops) the number of lowercase 'x' chars in the string.
 
 countX("xxhixx") → 4
 countX("xhixhix") → 3
 countX("hi") → 0
 
 */

func countX(_ str: String) -> Int {
    return -1
}


countX("xxhixx") == 4
countX("xhixhix") == 3
countX("hi") == 0
countX("h") == 0
countX("x") == 1
countX("") == 0
countX("hihi") == 0
countX("hiAAhi12hi") == 0


