-- 插入模式：

local model = require("Key.Map.Library.Model")

local map = model.Function.InsertMap
local opt = model.Option.DefaultOption

map("jk" , "<Esc>" , "To Normal Mode" , opt)

map("<C-v>" , "<Esc>\"+p" , "Paste Content" , opt)

-- 至行首：
map("<C-b>", "<Esc>^i" , "To the Begin of Line")

-- 至行尾：
map("<C-e>", "<End>" , "To the End of Line")

-- 往上下左右移动：（1个字符的距离）
map("<C-k>", "<Up>" , "Move Up")
map("<C-j>", "<Down>" , "Move Down")
map("<C-h>", "<Left>" , "Move Left")
map("<C-l>", "<Right>" , "Move Right")

function GetTimeString()
	return vim.fn.strftime('%H:%M:%S')
end

map("@time" , GetTimeString , "GetTimeString" , { expr = true , noremap = true })
