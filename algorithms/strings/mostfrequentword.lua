-- Author: JoshSCF
-- Returns the word that appears most frequently in a string

function GetMostFrequentWord(String)
    local Words = {}
    local MostFrequentWord = {
        Word = "",
        Count = 0
    }

    for Word in String:lower():gmatch("%S+") do -- Iterate through each word in string, ignoring case
        if Words[Word] then -- Check if word has appeared already
            Words[Word] = Words[Word] + 1 -- Add one to count
        else
            Words[Word] = 1 -- Set count to one
        end

        if Words[Word] > MostFrequentWord.Count then -- If word has appeared more than the current most frequent word
            -- Update most frequent word and frequency count
            MostFrequentWord.Word = Word
            MostFrequentWord.Count = Words[Word]
        end
    end

    return MostFrequentWord.Word -- Return most frequent word
end

print(GetMostFrequentWord("apple apple car bus bus bee bee bee apple apple egg")) -- Returns apple
