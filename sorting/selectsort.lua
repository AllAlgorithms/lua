
--[[
 Lua implementation of select sort
 
 Author: Micael Machado Gomes (micaellgoms@gmail.com)
--]]

-- @param unordered array
function selectSort(array)
    print("Select Sort:") 
    for i in pairs(array) do
        min = i
        for j = i, #array do
            if array[j] < array[min] then
                min = j 
            end
        end
    
        array[min], array[i] = array[i], array[min]
    end
end    