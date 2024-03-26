function Load()
	local load = require("Common.Module.Load")

	load.DeleteLoaded("Common.Array.Apply")

	local apl = require("Common.Array.Apply")

	return apl
end

local apl = Load()

local a = { 1 , 2 , 3 }

apl.ApplyValue(a , function (v) print(v) end)

apl.ApplyValue(
	a ,
	function (v1)
		local v2 = v1 + 1
		print(v2)
	end
)

apl.ApplyKeyValue(
	a ,
	function (k , v)
		print(string.format("%d = %d" , k , v))
	end
)
