local data = {}

function data.SetRuntimePath()
	local psv = require("Extension.lazy.Service.Path")

	local edp = psv.ExtensionPath

	vim.opt.rtp:prepend(edp)
end

function data.SetRuntimeEnvironment()
	data.SetRuntimePath()
end

---@type function
function data.InitAsFirstRun()
	local psv = require("Extension.lazy.Service.Path")

	local edp = psv.ExtensionPath

	-- 如果 lazy 的目录路径已存在
	if vim.loop.fs_stat(edp)
	then
		print("lazy 目录已存在！")
		return
	end

	-- 执行下载命令：
	local dsv = require("Extension.lazy.Service.Download")

	dsv.DownloadSelf(edp)
end

return data
