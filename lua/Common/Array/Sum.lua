local data = {}

function CalcSumValue(a1 , an , n)
	return n * (a1 + an) / 2
end

-- a: array
function data.Sum(a)
	local n = #a
	return CalcSumValue(a[1] , a[n] , n)
end

function data.SumRange(a1 , an)
	local n = an - a1 + 1
	return CalcSumValue(a1 , an , n)
end

function data.SumValues(...)
	local a = {...}
	local n = #a
	local r = 0

	for i = 1, n , 1
	do
		-- local v = tonumber(a[i])
		local v = a[i]
		r = r + v
	end

	return r
end

return data
