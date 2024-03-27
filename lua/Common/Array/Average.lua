local sum = require("Common.Array.Sum")

local data = {}

function data.Average(a)
	return sum.Sum(a) / #a
end

return data
