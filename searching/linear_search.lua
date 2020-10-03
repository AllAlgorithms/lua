local function linearSearch(list, key)
        for i, v in pairs(list) do
                if v == key then
                        return i
                end
        end
        return -1
end

local l = {1, 4, 6, 2}
local key = 4
local result = linearSearch(l, key)
if result == -1 then 
        print("Element not found")
else 
        print("Element found at position : " .. result)
end