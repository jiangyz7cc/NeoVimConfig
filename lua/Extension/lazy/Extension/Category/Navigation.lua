return
{
	-- 文本：
	{
		"smoka7/hop.nvim" ,
		lazy = true ,
		-- cmd = "StartHop" ,
		event = "VeryLazy" ,
		config =
			function()
				require("Extension.hop.Init")
			end
	} ,

	-- 多域：（文件、缓冲区 ...）
    {
		"nvim-telescope/telescope.nvim" ,
		lazy = true ,
		cmd = "StartTelescope" ,
		dependencies =
		{
			"nvim-lua/plenary.nvim"
		} ,
		config =
			function()
				require("Extension.telescope.Init")
			end
    }
}
