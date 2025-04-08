local model = {}

--- dp: dirPath
function model.DownloadSelf(dp)
    vim.fn.system(
		{
			"git" ,
			"clone" ,
			"--filter=blob:none" ,
			"https://github.com/folke/lazy.nvim.git" ,
			"--branch=stable" ,
			dp
		}
    )
end

return model
