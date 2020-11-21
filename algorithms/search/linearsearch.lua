--[[
 Lua implementation of Linear Search
 
 Author: Micael Machado Gomes (micaellgoms@gmail.com)
--]]

-- @param vector Integer vector where item will be search
-- @param search Item to be search
-- @returns -1 if item was not found, or item position in vector

function linearSearch(vector, search)
  -- interation in all elements
  for key = 1, #vector do
    if vector[key] == search then
      return key
    end
  end

  return -1
end
