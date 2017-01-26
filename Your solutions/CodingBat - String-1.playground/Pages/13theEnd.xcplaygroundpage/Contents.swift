

import Foundation

/*
 
 Given a string, return a string length 1 from its front, unless front is false, in which case return a string length 1 from its back. The string will be non-empty.
 
 theEnd("Hello", true) → "H"
 theEnd("Hello", false) → "o"
 theEnd("oh", true) → "o"
 
 */

func theEnd(_ str: String, _ front: Bool) -> String {
    return ""
}

theEnd("Hello", true)
theEnd("Hello", true) == "H"
theEnd("Hello", false) == "o"
theEnd("oh", true) == "o"
theEnd("oh", false) == "h"
theEnd("x", true) == "x"
theEnd("x", false) == "x"
theEnd("java", true) == "j"
theEnd("chocolate", false) == "e"
