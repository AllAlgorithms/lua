function fibonacci(number)

	if(number < 2) then
		return number
	else
		return fibonacci(number-1) + fibonacci(number-2)
	end

end


print("fibonacci(5) = ", fibonacci(5))
print("fibonacci(8) = ", fibonacci(8))
print("fibonacci(13) = ", fibonacci(13))
print("fibonacci(15) = ", fibonacci(15))
print("fibonacci(18) = ", fibonacci(18))
print("fibonacci(25) = ", fibonacci(25))