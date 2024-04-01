-- 正常模式：

local model = require("Key.Map.Library.Model")

local map = model.Function.NormalMap

-- local vimmap = vim.keymap.set

-- vimmap("n" , "<Leader>sh" , "<cmd>lua print('Map.Mode.Normal: hello')<CR>")
-- map("<Leader>sh" , "<cmd>lua print('Map.Mode.Normal: hello')<CR>")

-- 缓冲区：
map("<C-l>" , "<cmd>ls<CR>" , "List Buffers")

-- 窗口：
	-- 移动：
	map("<A-h>" , "<C-w>h" , "Window: Move to the Up")
	map("<A-j>" , "<C-w>j" , "Window: Move to the Down")
	map("<A-k>" , "<C-w>k" , "Window: Move to the Left")
	map("<A-l>" , "<C-w>l" , "Window: Move to the Right")

	-- 分割：
	map("<Leader>su" , "<C-w>s<C-w>K" , "Window: Split Up")
	map("<Leader>sd" , "<C-w>s" , "Window: Split Down")
	map("<Leader>sl" , "<C-w>v<C-w>H" , "Window: Split Left")
	map("<Leader>sr" , "<C-w>v" , "Window: Split Right")

-- 激活命令行：
-- 禁用：和 f 的继续查找键冲突
-- map(";" , ":" , "Activate Command Mode")

-- 更新文件：（未修改则不写入）
map("<C-s>" , "<cmd>update<CR>" , "Save File")

-- 复制整个文件的内容：
map("<C-c>" , "<cmd>%y+<CR>" , "Copy Content")
