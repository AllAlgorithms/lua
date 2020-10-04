--[[
        Lua implementation of Eucler's totient function
        Author: Vishnu M
--]]
local function gcd(a, b)
        if a == 0 then
                return b
        end
        return gcd(b % a, a)
end

local function totient(n)
        local result = 1
        for i=2, n do
                if gcd(i, n) == 1 then
                        result = result + 1
                end
        end
        return result   
end

print(totient(10))