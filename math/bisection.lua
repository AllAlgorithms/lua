--[[
 Lua implementation of bissetion method
 
 Author: Micael Machado Gomes (micaellgoms@gmail.com)
--]]

function f(x)
    local y = 2*x - math.sin(x) - 4
    return y
end 

-- defined random range
a, b = 2, 3
-- defined error to stop loop
erro = 0.001
-- defined Xn; slipt range;
x = (a + b)/2

k = 1
while math.abs(f(x)) >= erro and math.abs(b-a) >= erro do
    if f(a)*f(x) < 0 then
        b = x
    else 
        a = x
    end

    -- update Xn
    x = (a + b)/2
    k = k + 1
end    