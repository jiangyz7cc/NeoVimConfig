return
{
    -- 文件：

    -- { "nvim-neo-tree/neo-tree.nvim" } ,
    {
		"nvim-tree/nvim-tree.lua" ,
		lazy = true ,
		keys =
		{
			{ "<C-h>" , "<cmd>NvimTreeToggle<CR>" , desc = "NVimTree: Toggle" } ,
		} ,
		config =
			function()
				require("Extension.nvim-tree.Init")
			end
	}

	-- 在缓冲区中重命名文件：
	-- { "simpledanro/rename.vim "}
}
