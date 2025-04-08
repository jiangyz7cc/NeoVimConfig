return
{
	-- LSP：

	{
		"neovim/nvim-lspconfig"
	} ,

	-- 扩展管理：
	{
		"williamboman/mason.nvim" ,
		-- lazy = true ,
		config =
			function()
				require("Extension.mason.Init")
			end
	} ,

	-- 连接：mason 和 nvim-lspconfig：
	{
		"williamboman/mason-lspconfig.nvim" ,
		-- lazy = true ,
		-- event = "LspAttach" ,
		dependencies =
		{
			"williamboman/mason.nvim"
		} ,
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
	{
		"hrsh7th/nvim-cmp" ,
		dependencies =
		{
			"LuaSnip"
		}
	} ,

	{ "hrsh7th/cmp-nvim-lsp" } ,
	{ "hrsh7th/cmp-path" } ,
	{ "hrsh7th/cmp-buffer" } ,
	{ "hrsh7th/cmp-cmdline" } ,
	{
		"hrsh7th/cmp-vsnip"
	} ,
	{
		"L3MON4D3/LuaSnip" ,
	} ,
	{ "saadparwaiz1/cmp_luasnip" } ,
	{ "rafamadriz/friendly-snippets" } ,

	-- 对：() [] "" '' ...
	{
		'windwp/nvim-autopairs' ,
		event = "InsertEnter" ,
		config = true ,
		opts = {}
	},

	-- 片段：
	-- 引擎
	{
		"hrsh7th/vim-vsnip"
	} ,

	-- 注释：
	{
		"numToStr/Comment.nvim" ,
		lazy = false ,
		opts =
		{

		} ,
		config =
		function()
			require("Extension.Comment.Init")
		end

		-- Doc:
		-- :help comment-nvim
	} ,

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
	}
}
