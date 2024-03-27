-- 正常模式：

local model = require("Key.Map.Library.Model")

local map = model.Function.NormalMap()

map("<C-l>" , ":ls<CR>" , "List Buffers")

-- 窗口：
	-- 移动：
	map("<A-h>" , "<C-w>h" , "Move to the Up Window")
	map("<A-j>" , "<C-w>j" , "Move to the Down Window")
	map("<A-k>" , "<C-w>k" , "Move to the Left Window")
	map("<A-l>" , "<C-w>l" , "Move to the Right Window")

	-- 分割：
	map("<leader>su" , "<C-w>s<C-w>K" , "Split Up")
	map("<leader>sd" , "<C-w>s" , "Split Down")
	map("<leader>sl" , "<C-w>v<C-w>H" , "Split Left")
	map("<leader>sr" , "<C-w>v" , "Split Right")

-- 激活命令行：
map(";" , ":" , "Activate Command Mode")

-- 更新文件：（未修改则不写入）
map("<C-s>" , "<cmd>update<CR>" , "Save File")

-- 复制整个文件的内容：
map("<C-c>" , "<cmd>%y+<CR>" , "Copy Content")
