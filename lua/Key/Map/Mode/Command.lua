-- 命令模式：

local model = require("Key.Map.Library.Model")

local map = model.Function.CommandMap

map("<C-k>" , "<Up>" , "Move Up")
map("<C-j>" , "<Down>" , "Move Down")
