return
{
	-- LSP：

	{
		"neovim/nvim-lspconfig" ,
		lazy = true
		-- ft =
		-- {
		-- 	"lua" ,
		-- 	"c" ,
		-- 	"csharp"
		-- }
	} ,

	-- 扩展管理：
	{
		"williamboman/mason.nvim" ,
		lazy = true ,
		event =
		{
			"BufReadPre" ,
			"FileType"

			-- "VeryLazy" ,
			-- "LspAttach"
		} ,
		dependencies =
		{
			"williamboman/mason-lspconfig.nvim" ,
			"neovim/nvim-lspconfig"
		},
		config =
			function()
				require("Extension.mason.Init")
			end
	} ,

	-- 连接：mason 和 nvim-lspconfig：
	{
		"williamboman/mason-lspconfig.nvim" ,
		lazy = true ,
		event = "LspAttach" ,
		opts =
		{
			automatic_installation = true
		} ,
		config =
			function()
				require("Extension.mason-lspconfig.Init")
			end
	} ,

	-- LSP$

    -- 补全：
	-- 通用服务框架：
	{
		"hrsh7th/nvim-cmp" ,
		lazy = true ,
		event = "InsertEnter" ,
		dependencies =
		{
			"LuaSnip"
		} ,
		config =
			function()
				require("Extension.nvim-cmp.Init")
			end
	} ,

	-- 来源：

	-- LSP：
	{
		"hrsh7th/cmp-nvim-lsp" ,
		lazy = true ,
		event = "InsertEnter"
	} ,

	-- 文件路径：
	{
		"hrsh7th/cmp-path" ,
		lazy = true ,
		event = "InsertEnter"
	} ,

	-- 缓冲区内容：
	{
		"hrsh7th/cmp-buffer" ,
		lazy = true ,
		event = "InsertEnter"
	} ,

	-- 命令行：
	{
		"hrsh7th/cmp-cmdline" ,
		enabled = false ,
		lazy = true ,
		event = "VeryLazy"
	} ,

	-- 片段： 
	{
		"hrsh7th/cmp-vsnip" ,
		lazy = true ,
		event = "InsertEnter"
	} ,

	{
		"L3MON4D3/LuaSnip" ,
		lazy = true ,
		event = "InsertEnter"
	} ,

	-- {
	-- 	"saadparwaiz1/cmp_luasnip"
	-- } ,

	{
		"rafamadriz/friendly-snippets" ,
		lazy = true ,
		event = "InsertEnter"
	} ,

	-- 对：() [] "" '' ...
	{
		'windwp/nvim-autopairs' ,
		lazy = true ,
		event = "InsertEnter" ,
		opts = {} ,
		-- config =
		-- 	function()
		-- 	end
	},

	-- 片段服务：
	-- {
	-- 	"hrsh7th/vim-vsnip"
	-- } ,

	-- 注释：
	{
		-- 文档：
		-- :help comment-nvim

		"numToStr/Comment.nvim" ,
		lazy = true ,
		event = "LspAttach" ,
		opts =
		{

		} ,
		config =
			function()
				require("Extension.Comment.Init")
			end
	} ,

	-- { "akinsho/bufferline.nvim" } ,
	-- { "lewis6991/gitsigns.nvim" }

	-- 语法：
	{
		"nvim-treesitter/nvim-treesitter" ,
		lazy = true ,
		-- event = "InsertEnter" ,
		cmd = "StartTreeSitter" ,
		config =
			function()
				require("Extension.nvim-treesitter.Init")
			end
	} ,

	{
		"nvimdev/lspsaga.nvim" ,
		lazy = true ,
		event = "LspAttach" ,
		config =
			function()
				require('lspsaga').setup({})
			end ,
		dependencies =
		{
			'nvim-treesitter/nvim-treesitter' ,
			'nvim-tree/nvim-web-devicons'
		}
	}
}
