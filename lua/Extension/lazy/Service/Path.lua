local module = {}

local nvPath = require("Common.Path.NeoVim")

local dataPath = nvPath.DataPath

-- 获取扩展 (lazy) 的目录路径：
module.ExtensionPath = dataPath .. "/lazy/lazy.nvim"

return module
