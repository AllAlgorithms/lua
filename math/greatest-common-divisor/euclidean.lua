--[[
        Lua implementation of Euclid's GCD Algorithm
        Author: Vishnu M
--]]

local function gcd(a, b)
        if a == 0 then
                return b
        end
        return gcd(b % a, a)
end

print(gcd(35, 15))