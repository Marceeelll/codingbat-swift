

import Foundation

/*
 
 Look for patterns like "zip" and "zap" in the string -- length-3, starting with 'z' and ending with 'p'. Return a string where for all such words, the middle letter is gone, so "zipXzap" yields "zpXzp".
 
 zipZap("zipXzap") → "zpXzp"
 zipZap("zopzop") → "zpzp"
 zipZap("zzzopzop") → "zzzpzp"
 
 */

func zipZap(_ str: String) -> String {
    return ""
}

zipZap("zipXzap") == "zpXzp"
zipZap("zopzop") == "zpzp"
zipZap("zzzopzop") == "zzzpzp"
zipZap("zibzap") == "zibzp"
zipZap("zip") == "zp"
zipZap("zi") == "zi"
zipZap("z") == "z"
zipZap("") == ""
zipZap("zzp") == "zp"
zipZap("abcppp") == "abcppp"
zipZap("azbcppp") == "azbcppp"
zipZap("azbcpzpp") == "azbcpzp"
