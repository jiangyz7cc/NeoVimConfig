local map = vim.keymap.set

local opt =
{
	noremap = true
	-- slient = true
}

-- 正常模式：

map("n" , "<leader>ls" , ":ls<CR>" , opt , { desc = "List Buffers" })
map("n" , "<C-l>" , ":ls<CR>")

-- 窗口：
	-- 移动：
		map("n" , "<A-h>" , "<C-w>h")
		map("n" , "<A-j>" , "<C-w>j")
		map("n" , "<A-k>" , "<C-w>k")
		map("n" , "<A-l>" , "<C-w>l")

	-- 分割：
		map("n" , "<leader>su" , "<C-w>s<C-w>K" , { desc = "Split Up" })
		map("n" , "<leader>sd" , "<C-w>s" , { desc = "Split Down" })
		map("n" , "<leader>sl" , "<C-w>v<C-w>H" , { desc = "Split Left" })
		map("n" , "<leader>sr" , "<C-w>v" , { desc = "Split Right" })

map("n" , ";" , ":" , { desc = "Activate command mode" })

map("n" , "<C-s>" , "<cmd>update<CR>" , { desc = "File Save" })
map("n" , "<C-c>" , "<cmd>%y+<CR>" , { desc = "File Copy whole" })
