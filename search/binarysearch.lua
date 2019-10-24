--[[
    Lua implementation of binary search

    Author: Vinicius Costa Castro (costacastrovinicius7@gmail.com)
]]


-- Lua implementation of binary search
-- @param vector Integer vector where item will be search
-- @param left First position of subvector
-- @param right Last position of subvector
-- @param item Item to be search
-- @returns -1 if item was not found, or item position in vector
local function search(vector, left, right, item)
    if left > right then
        return -1
    end

    middle = math.floor((left + right) / 2)
    if (vector[middle] == item) then
        return middle
    elseif (vector[middle] > item) then
        return search(vector, left, middle - 1, item)
    else
        return search(vector, middle + 1, right, item)
    end
end

return function(vector, item)
    return search(vector, 1, #vector, item)
end