return
{
	-- 键：
	-- 键映射提示：
    {
		"folke/which-key.nvim" ,
		lazy = true ,
		cmd = "StartWhichKey" ,
		config =
			function()
				require("Extension.which-key.Init")
			end
	} ,

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
	} ,

	-- 在缓冲区中重命名文件：
	-- { "simpledanro/rename.vim "} ,

	-- 语言：

	-- LSP:

	-- 配置：
	{ "neovim/nvim-lspconfig" } ,

	-- 扩展管理：
	{
		"williamboman/mason.nvim" ,
		-- lazy = true ,
		config =
			function()
				require("Extension.mason.Init")
			end
	} ,

	-- 连接 mason 和 nvim-lspconfig：
	{
		"williamboman/mason-lspconfig.nvim" ,
		-- lazy = true ,
		config =
			function()
				require("Extension.mason-lspconfig.Init")
			end
	} ,

	-- LSP$

    -- 补全：
	{ "hrsh7th/nvim-cmp" } ,
	{ "hrsh7th/cmp-nvim-lsp" } ,
	-- { "hrsh7th/cmp-path" } ,
	-- { "hrsh7th/cmp-buffer" } ,
	-- { "hrsh7th/cmp-cmdline" } ,

	-- 补全对：（如：() [] "" '' ...）
	{
		'windwp/nvim-autopairs' ,
		event = "InsertEnter" ,
		config = true ,
		opts = {}
	},

	-- 片段：
	-- { "hrsh7th/vim-vsnip" } , -- 引擎
	-- { "hrsh7th/cmp-vsnip" } , -- 补全
	{ "L3MON4D3/LuaSnip" } ,
	{ "saadparwaiz1/cmp_luasnip" } ,
	{ "rafamadriz/friendly-snippets" } ,

	-- 注释：
	-- { "numToStr/Comment.nvim" } ,

	-- { "akinsho/bufferline.nvim" } ,
	-- { "lewis6991/gitsigns.nvim" }

	-- 语法：
	{
		"nvim-treesitter/nvim-treesitter" ,
		lazy = true ,
		cmd = "StartTreeSitter" ,
		config =
			function()
				require("Extension.nvim-treesitter.Init")
			end
	} ,

	-- 语言$

	-- 导航：

	-- 文本：
	{
		"smoka7/hop.nvim" ,
		cmd = "StartHop" ,
		lazy = true ,
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
    } ,

	-- 导航$

    -- 配置：
    -- { "folke/neoconf.nvim", cmd = "NeoConf" },
    -- { "folke/neodev.nvim" },

	-- 外观：

    -- 图标：
	{
		"nvim-tree/nvim-web-devicons" ,
		lazy = true
	} ,

	-- 状态栏：
	{
		"nvim-lualine/lualine.nvim" ,
        dependencies = { "nvim-tree/nvim-web-devicons" } ,
		lazy = false ,
		config =
			function()
				require("Extension.lualine.Init")
			end
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

	-- 外观$
}
