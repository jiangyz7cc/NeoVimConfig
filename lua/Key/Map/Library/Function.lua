local data = {}

local vimmap = vim.keymap.set

function data.CreateModeMap(map , mode)
	return function (source , target , description , option)
		if(option == nil)
		then
			option = { }
		end

		option.desc = description

		return map(mode , source , target , option)
	end
end

function data.NormalMap()
	return data.CreateModeMap(vimmap , "n")
end

function data.InsertMap()
	return data.CreateModeMap(vimmap , "i")
end

function data.VisualMap()
	return data.CreateModeMap(vimmap , "v")
end

function data.CommandMap()
	return data.CreateModeMap(vimmap , "c")
end

return data
