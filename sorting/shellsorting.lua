--[[
 Lua implementation of shell sort
 
 Author: Micael Machado Gomes (micaellgoms@gmail.com)
--]]

-- @param unordered array
function shellSort(array)
    print("Shell Sort:")
    h = 1
    while h < #array do
        h = (3*h)+1
    end 

    repeat
        h = math.floor(h/3)
        for i = 1, #array do
            temp = array[i]
            j = i - h
            while j >= 1 and array[j] > temp do
                array[j+h] = array[j]
                j = j - h
            end
            array[j+h] = temp
        end 
    until h <= 1
end