return
{
	-- 文本：
	{
		"smoka7/hop.nvim" ,
		cmd = "StartHop" ,
		-- lazy = true ,
		config =
			function()
				require("Extension.hop.Init")
			end
	} ,

	-- 多域：（文件、缓冲区 ...）
    {
		"nvim-telescope/telescope.nvim" ,
		dependencies = { "nvim-lua/plenary.nvim" } ,
		cmd = "StartTelescope" ,
		lazy = true ,
		config =
			function()
				require("Extension.telescope.Init")
			end
    }
}
