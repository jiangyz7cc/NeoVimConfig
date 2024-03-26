local map = vim.keymap.set

local opt =
{
	noremap = true
	-- slient = true
}

-- 正常模式：

map("n" , "<leader>ls" , ":ls<CR>" , opt)
map("n" , "<C-l>" , ":ls<CR>")

-- 窗口：
	-- 移动：
		map("n" , "<A-h>" , "<C-w>h")
		map("n" , "<A-j>" , "<C-w>j")
		map("n" , "<A-k>" , "<C-w>k")
		map("n" , "<A-l>" , "<C-w>l")

	-- 分割：
		-- 新窗口：位于：
		-- 上侧 (sd: split up)
		-- 下侧 (sd: split down)
		-- 左侧 (sr: split left)
		-- 右侧 (sr: split right)
		map("n" , "<leader>su" , "<C-w>s<C-w>K")
		map("n" , "<leader>sd" , "<C-w>s")
		map("n" , "<leader>sl" , "<C-w>v<C-w>H")
		map("n" , "<leader>sr" , "<C-w>v")

map("n", ";", ":", { desc = "Activate command mode" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "File Save" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "File Copy whole" })
