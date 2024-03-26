local apply = require("Common.Array.Apply")

local data = {}

function data.OutputKey(a)
	apply.ApplyKey(
		a ,
		function (k)
			print(k)
		end
	)
end

function data.OutputValue(a)
	apply.ApplyValue(
		a ,
		function (v)
			print(v)
		end
	)
end

function data.Output(a)
	return data.OutputValue(a)
end

function data.OutputIndexValue(a)
	apply.Apply(
		a ,
		function (k , v)
			-- print(k , v)
			print(k .. " = " .. v)
		end
	)
end

return data
