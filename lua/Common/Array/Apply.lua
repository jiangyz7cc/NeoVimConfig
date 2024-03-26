local data = {}

function data.ApplyKey(a , f)
	for k , _ in ipairs(a)
	do
		f(k)
	end
end

function data.ApplyValue(a , f)
	for _ , v in ipairs(a)
	do
		f(v)
	end
end

-- a: array
-- f: function
function data.ApplyKeyValue(a , f)
	for k, v in ipairs(a)
	do
		f(k , v)
	end
end

return data
