local data = {}

function data.CreateRanged(v1 , v2)
	local a = {}

	for i = v1 , v2 , 1
	do
		a[i] = i
	end

	return a
end

function data.CreateSequential(n)
	return data.CreateRanged(1 , n)
end

return data
