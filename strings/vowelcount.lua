-- Author: JoshSCF
-- Returns the amount of vowels in a string

local Vowels = {
    A = true,
    E = true,
    I = true,
    O = true,
    U = true
}

function GetVowelCount(String)
    local Count = 0
    for i = 1, #String do -- Iterate from 1 to the length of string
        local Char = String:sub(i, i) -- Get character at the ith position
        if Vowels[Char:upper()] then -- Check if uppercase form of character is in vowels table
            Count = Count + 1 -- Add one to count
        end
    end
    return Count -- Return total amount of vowels found within string
end

print(GetVowelCount("Hello, this is an example!")) -- Returns 8
