function CheckIfValueEqualsNil(v)
	if(v == nil)
	then
		return true
	else
		return false
	end
end

-- v: value
-- vn: value name
function CheckIfValueEqualsNilAndOutput(v , vn)
	if(CheckIfValueEqualsNil(v))
	then
		print(vn .. " = " .. "nil")
	else
		print(vn .. " != " .. "nil")
	end
end
