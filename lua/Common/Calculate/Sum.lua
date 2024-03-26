local data = {}

function CalcSumValue(a1 , an , n)
	return n * (a1 + an) / 2
end

-- a: array
function data.SumArray(a)
	local n = #a
	return CalcSumValue(a[1] , a[n] , n)
end

function data.SumRange(a1 , an)
	local n = an - a1 + 1
	return CalcSumValue(a1 , an , n)
end

return data
