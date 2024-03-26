-- print("lazy:")

-- 获取扩展 (lazy) 的目录路径：
local edp = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- print("Extension's Dir Path:" .. edp)

-- 如果 lazy 的目录路径不存在，则执行下载命令：
-- if not vim.loop.fs_stat(ep)
-- then
--     require("Extension/lazy/DownloadSelf").Download(ldp)
-- end

vim.opt.rtp:prepend(edp)

local e = require("lazy")
local c = require("Extension/lazy/ExtensionConfig")

e.setup(c)

-- print("lazy$")
