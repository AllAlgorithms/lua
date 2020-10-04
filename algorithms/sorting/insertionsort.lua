insertion = {}
insertion.__index = insertion

function insertion.sort(a, comparator)
    local N = a:size()
    for i=1,(N-1) do
        for j=(i-1),0,-1 do
            if comparator(a:get(j+1), a:get(j)) < 0 then
                insertion.exchange(a, j, j+1)
            else
                break
            end
        end
    end
end

function insertion.exchange(a, i, j)
    local temp = a:get(i)
    a:set(i, a:get(j))
    a:set(j, temp)
end

return insertion
