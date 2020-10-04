-- Author: jotslo
-- Returns a boolean representing whether two strings are anagrams, ignoring non-alphabetic characters.

local function stringToTable(string)
    local characterTable = {}

    -- Iterate through characters in string and add each as value to table.
    for i = 1, #string do
        table.insert(characterTable, string:sub(i, i))
    end

    return characterTable
end

local function isAnagram(string1, string2)
    -- Remove non-alphabetic characters and convert both strings to same case for comparison.
    local strippedString1 = string1:gsub("%W", ""):lower()
    local strippedString2 = string2:gsub("%W", ""):lower()

    -- If strings are same length, convert strings to tables.
    if #strippedString1 == #strippedString2 then
        local table1 = stringToTable(strippedString1)
        local table2 = stringToTable(strippedString2)

        -- Sort tables by character. (Ex: cab -> abc)
        table.sort(table1)
        table.sort(table2)
        
        -- Return boolean depending on whether sorted strings are equal.
        return table.concat(table1) == table.concat(table2)
    end

    -- If strings aren't same length, return false as they are not anagrams.
    return false
end

print(isAnagram("test", "test")) -- true
print(isAnagram("anagram", "Nag a Ram")) -- true
print(isAnagram("abc", "def")) -- false
