return
{
	-- 开发：
    {
		"folke/neodev.nvim" ,
		lazy = true , 
		config =
			function()
				require("neodev").setup(
					{
						library =
						{
							plugins =
							{
								"nvim-dap-ui"
							} ,
							types = true
						}
					}
				)
			end
	} ,

    -- 设置：
    {
		"folke/neoconf.nvim" ,
		lazy = true ,
		cmd = "NeoConf"
	}
}
