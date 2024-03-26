local data = {}

function data.Abs(a , b)
	local c = a - b

	if (c < 0) then
		c = -c
	end

	return c
end

return data
