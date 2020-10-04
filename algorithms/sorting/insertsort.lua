--[[
 Lua implementation of insert sort
 
 Author: Micael Machado Gomes (micaellgoms@gmail.com)
--]]

-- @param unordered array
function insertSort(array)
    print("Insert Sort:")
    for i = 1, #array do
        temp = array[i]
        j = i - 1
        while j > 0 and array[j] > temp do
            array[j+1] = array[j]
            j = j - 1
        end
        array[j + 1] = temp
    end
end 