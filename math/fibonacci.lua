--[=====[ 
  Fibonacci Implemntation in Lua
  https://github.com/allalgorithms/lua
  https://repl.it/@abranhe/Fibonacci-in-Lua
--]=====]

function fibonacci(number)

	if(number < 2) then
		return number
	else
		return fibonacci(number-1) + fibonacci(number-2)
	end

end

for i = 1,30,1 do 
   print(i, "= ", fibonacci(i))
end
