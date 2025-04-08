local module = {}

local vimmap = vim.keymap.set

function module.CreateModeMap(map , mode)
	return
	function(source , target , description , option)
		if(option == nil)
			then
				option = { }
			end

			option.desc = description

			return map(mode , source , target , option)
	end
end

function module.CreateNormalMap()
	return module.CreateModeMap(vimmap , "n")
end

function module.CreateInsertMap()
	return module.CreateModeMap(vimmap , "i")
end

function module.CreateVisualMap()
	return module.CreateModeMap(vimmap , "v")
end

function module.CreateCommandMap()
	return module.CreateModeMap(vimmap , "c")
end

module.NormalMap = module.CreateNormalMap()
module.InsertMap = module.CreateInsertMap()
module.VisualMap = module.CreateVisualMap()
module.CommandMap = module.CreateCommandMap()

return module
