local model = require("Key.Map.Library.Model")

local map = model.Function.VisualMap()

-- 可视模式：
map("K" , ":m '<-2<CR>gv=gv" , "Move Up")
map("J" , ":m '>+1<CR>gv=gv" , "Move Down")
