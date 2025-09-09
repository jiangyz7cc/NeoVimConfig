local data = {}

function data.SetEnvironment()
	local psv = require("Extension.lazy.Service.Path")
	local edp = psv.ExtensionPath

	vim.opt.rtp:prepend(edp)
end

function data.InstallLazy(edp)
	local dsv = require("Extension.lazy.Service.Download")

	dsv.DownloadSelf(edp)

	vim.opt.rtp:prepend(edp)
end

function data.Init()
	data.SetEnvironment()

	local psv = require("Extension.lazy.Service.Path")
	local edp = psv.ExtensionPath

	print("edp" , edp)

	-- 检查扩展的目录路径是否存在：
	if vim.loop.fs_stat(edp)
	then
		-- print("lazy 目录已存在！")
		return
	else
		InstallLazy(edp)
	end
end

return data
