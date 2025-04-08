local model = {}

local nvp = require("Common.Path.NeoVim")

local vddp = nvp.DataPath

-- 获取扩展 (lazy) 的目录路径：
local edp = vddp .. "/lazy/lazy.nvim"

model.ExtensionPath = edp

return model
