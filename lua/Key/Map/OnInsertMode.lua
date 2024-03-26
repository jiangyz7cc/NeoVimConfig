local map = vim.keymap.set

local opt =
{
	noremap = true
	-- slient = true
}

-- 插入模式：
map("i" , "jk" , "<Esc>" , opt)
map("i" , "<C-v>" , "<Esc>\"+p" , opt)
