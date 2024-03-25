-- 映射：

--[[
	-- 语法：
		map(<Mode> , <SourceKey> , <TargetKey> , <Option>)

	-- 函数 ：
		-- local map = vim.api.nvim_set_keymap
		local map = vim.keymap.set

	-- 选项：
		local opt =
		{
			noremap = true ,
			slient = true
		}
]]

require("Key/Map/OnCommandMode")
require("Key/Map/OnInsertMode")
require("Key/Map/OnNormalMode")
require("Key/Map/OnVisualMode")
require("Key/Map/SpecialKeys")
