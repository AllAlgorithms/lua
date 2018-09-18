
--[[
 Lua implementation of merge sort
 
 Author: Carlos Abraham Hernandez (abraham@abranhe.com)
--]]

local function lt( x, y )
	return x < y
end

return function( a, cmp, b, num, pad )
	cmp, b, num, pad = cmp or lt, b or {}, num or #a, pad or 1
	
	local k = 1
	while k < num do
		for left = 0, num-k-1, k+k do
			local rght = left + k
			local rend = rght + k

			if rend > num then
				rend = num
			end

			local m, i, j = left, left, rght

			while i < rght and j < rend do
				if cmp( a[i+pad], a[j+pad] ) then
					b[m+pad] = a[i+pad]
					i = i + 1
				else
					b[m+pad] = a[j+pad]
					j = j + 1
				end
				m = m + 1
			end

			while i < rght do
				b[m+pad] = a[i+pad]
				i, m = i + 1, m + 1
			end

			while j < rend do
				b[m+pad] = a[j+pad]
				j, m = j + 1, m + 1
			end

			for l = left, rend-1 do
				a[l+pad] = b[l+pad]
			end
		end

		k = k + k
	end
	return a
