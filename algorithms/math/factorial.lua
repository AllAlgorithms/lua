-- Author: JoshSCF
-- Returns the factorial of a number

function Factorial(Number)
    local Total = 1
    for i = 2, Number do -- Iterates through all integers from 2 to Number
        Total = Total * i -- Multiplies total by i
    end
    return Total -- Return total factorial value
end

print(Factorial(6)) -- Returns 720
