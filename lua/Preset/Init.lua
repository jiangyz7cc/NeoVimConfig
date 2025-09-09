require("Extension.Default.Init")
vim.opt.runtimepath:append("~/.config/NeoVim")

-- 停止使用 netrw：
-- 将其加载的状态设置为已加载
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 启用 NeoVim 内置模块预加载
-- vim.loader.enable()
