local data = {}

function data.CreateDefaultOption()
	local opt =
	{
		noremap = true ,
		silent = true ,
		nowait = true
	}
	return opt
end

data.DefaultOption = data.CreateDefaultOption()

return data
