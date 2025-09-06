<<<<<<< HEAD
-- print("lazy.Init:")
=======
print("lazy:")
>>>>>>> cd0daa51417388f537f5c9663d422f07500b1545

local p = require("Extension.lazy.Service.Preset")

<<<<<<< HEAD
p.Init()

local e = require("lazy")
local c = require("Extension.lazy.Extension.Config")

e.setup(c)

-- print("lazy.Init$")
=======
print("Extension's Dir Path:" .. edp)

-- 如果 lazy 的目录路径不存在，则执行下载命令：
if not vim.loop.fs_stat(edp)
then
	local module = require("Extension/lazy/DownloadSelf")

	print("Download:")

    module.Download(edp)

	print("Download$")
end

vim.opt.rtp:prepend(edp)

local e = require("lazy")

if e == nil
then
	print("e = nil")
end

local c = require("Extension/lazy/ExtensionConfig")

e.setup(c)

print("lazy$")
>>>>>>> cd0daa51417388f537f5c9663d422f07500b1545
