local data = {}

function data.Compare(a , b)
	if(a > b) then
		return 1
	elseif (a == b) then
		return 0
	else -- (a < b)
		return -1
	end
end

return data
