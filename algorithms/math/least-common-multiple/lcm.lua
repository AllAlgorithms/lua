--[[
        Lua code for finding LCM of two numbers
        Author: Vishnu M
--]]

local function gcd(a,b)
    if a == 0 then
        return b 
    end
    return gcd(b % a, a) 
end
  
local function lcm(a,b)
    return math.floor((a*b) / gcd(a,b))
end

print(lcm(25,10))