-- Author: JoshSCF
-- Checks whether a string is a palindrome

function IsPalindrome(String)
    local NewString = String:upper() -- Convert string to uppercase so there isn't a case sensitivity problem

    return NewString1 == NewString2:reverse() -- Returns true/false depending on whether one string is a palindrome of another
end

print(IsPalindrome("racecaR")) -- Returns true
