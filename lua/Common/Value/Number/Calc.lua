local data = {}

function data.Add(a , b)
	return a + b
end

function data.Sub(a , b)
	return a - b
end

function data.Mul(a , b)
	return a * b
end

function data.Div(a , b)
	return a / b
end

function data.Pow(a , n)
	if(n == 0) then
		return a
	else
		return data.Pow(a * a , n - 1)
	end
end

return data
