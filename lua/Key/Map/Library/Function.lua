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

function data.CreateNormalMap()
	return data.CreateModeMap(vimmap , "n")
end

function data.CreateInsertMap()
	return data.CreateModeMap(vimmap , "i")
end

function data.CreateVisualMap()
	return data.CreateModeMap(vimmap , "v")
end

function data.CreateCommandMap()
	return data.CreateModeMap(vimmap , "c")
end

data.NormalMap = data.CreateNormalMap()
data.InsertMap = data.CreateInsertMap()
data.VisualMap = data.CreateVisualMap()
data.CommandMap = data.CreateCommandMap()

return data
