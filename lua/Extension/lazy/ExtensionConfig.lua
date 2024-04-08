return
{
	-- 编辑：
	-- { "tpope/vim-repeat" } -- 启用对于 . 的重复执行
	-- { "tpope/vim-surround" } -- 自动添加环绕字符：( , < , "

	-- 键：
    { "folke/which-key.nvim" , cmd = "WhichKey" }, -- 显示键映射

    -- 文件：
    -- { "nvim-neo-tree/neo-tree.nvim" },
    { "nvim-tree/nvim-tree.lua" } ,
	-- { "simpledanro/rename.vim "} -- 在缓冲区中重命名文件

	-- 语言：

	-- LSP:
	{ "williamboman/mason.nvim" } ,
	{ "williamboman/mason-lspconfig.nvim" } ,
	{ "neovim/nvim-lspconfig" } ,
	-- { "razzmatazz/csharp-language-server" } ,

    -- 补全：
	{ "hrsh7th/nvim-cmp" } ,
	{ "hrsh7th/cmp-nvim-lsp" } ,
	{ "hrsh7th/cmp-path" } ,
	{ "hrsh7th/cmp-buffer" } ,
	{ "hrsh7th/cmp-cmdline" } ,

	-- 片段：
	{ "hrsh7th/vim-vsnip" } , -- 引擎
	{ "hrsh7th/cmp-vsnip" } , -- 补全
	{ "L3MON4D3/LuaSnip" } ,
	{ "saadparwaiz1/cmp_luasnip" } ,
	{ "rafamadriz/friendly-snippets" } ,

	-- { "numToStr/Comment.nvim" } ,
	-- { "windwp/nvim-autopairs" } ,
	-- { "akinsho/bufferline.nvim" } ,
	-- { "lewis6991/gitsigns.nvim" }

	-- { 'nvim-lua/plenary.nvim' } ,
	-- { 'nvim-telescope/telescope.nvim' } ,

	-- 语法：
	{ "nvim-treesitter/nvim-treesitter" , cmd = "TreeSitter" } ,

	-- 语言$

	-- 导航：

	-- 多域：
    {
		'nvim-telescope/telescope.nvim' ,
		tag = '0.1.6' ,
		dependencies = { 'nvim-lua/plenary.nvim' }
    } ,

	-- 文本：
	{
		'smoka7/hop.nvim' ,
		version = "*" ,
		opts = {} ,
	} ,

	-- 导航$

    -- 配置：
    -- { "folke/neoconf.nvim", cmd = "NeoConf" },
    -- { "folke/neodev.nvim" },

    -- 图标：
	{ "nvim-tree/nvim-web-devicons" } ,
    {
        'nvim-lualine/lualine.nvim' ,
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    } ,

    -- 主题：
    { "EdenEast/nightfox.nvim" }
    -- { "folke/tokyonight.nvim" }

}
