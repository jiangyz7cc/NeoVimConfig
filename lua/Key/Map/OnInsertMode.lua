local map = vim.keymap.set

local opt =
{
	noremap = true
	-- slient = true
}

-- 插入模式：

-- Esc:
map("i" , "jk" , "<Esc>" , opt)
map("i" , "<C-v>" , "<Esc>\"+p" , opt)

-- 至行首：
map("i", "<C-b>", "<ESC>^i")

-- 至行尾：
map("i", "<C-e>", "<End>")


-- 往上下左右移动：（1个字符的距离）
map("i", "<C-k>", "<Up>")
map("i", "<C-j>", "<Down>")
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")
