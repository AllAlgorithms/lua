local function binarySearch(list, low, high, key)
        if low > high then 
                return -1
        end
        local mid = math.floor((low+high)/2)
        if list[mid] > key then 
                return binarySearch(list, low, mid-1, key) 
        elseif list[mid] < key then 
                return binarySearch(list, mid+1, high, key) 
        end
        return mid
end   

local l = {1, 4, 7, 9, 11}
local key = 9
local result = binarySearch(l, 1, #l, key)
if result == -1 then 
        print("Element not found")
else 
        print("Element found at position : " .. result)
end