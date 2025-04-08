return
{
    -- 图标：
	{
		"nvim-tree/nvim-web-devicons" ,
		lazy = true
	} ,

	-- 状态栏：
	{
		"nvim-lualine/lualine.nvim" ,
		lazy = true ,
		event = "UIEnter" ,
		priority = 300 ,
        dependencies = { "nvim-tree/nvim-web-devicons" } ,
		opts =
		{
			theme = "auto"
		}
		-- config =
		-- 	function()
		-- 		require("Extension.lualine.Init")
		-- 	end
	},

    -- 主题：
    {
		"EdenEast/nightfox.nvim" ,
		lazy = false
	}
    -- {
	-- 	"folke/tokyonight.nvim" ,
	-- 	lazy = true
	-- }
}
