--[[
    Lua implementation of quicksort

    Author: Vinicius Costa Castro (costacastrovinicius7@gmail.com)
]]

local function partition(vector, left, right)
    local aux
    _left =  left + 1
    _right = right
    pivot = vector[left]

    while (_left <= _right) do
        if (vector[_left] < pivot) then
            _left = _left + 1
        elseif (pivot < vector[_right]) then
            _right = _right - 1
        else
            aux = vector[_left]
            vector[_left] = vector[_right]
            vector[_right] = aux
            _left = _left + 1
            _right = _right - 1
        end
    end

    aux = vector[left]
    vector[left] = vector[_right]
    vector[_right] = aux
    return _right, vector
end

local function quicksort(vector, left, right)
    if (left <= right) then
        pivot, vector = partition(vector, left, right)
        vector = quicksort(vector, left, pivot - 1)
        vector = quicksort(vector, pivot + 1, right)
    end
    
    return vector
end

return function(vector)
    return quicksort(vector, 1, #vector)
end