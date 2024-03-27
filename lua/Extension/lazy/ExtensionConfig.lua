return
{
    -- 配置管理：
    -- { "folke/neoconf.nvim", cmd = "NeoConf" },
    -- { "folke/neodev.nvim" },
    { "folke/which-key.nvim" , cmd = "WhichKey" },

    -- 文件管理器：
    -- { "nvim-neo-tree/neo-tree.nvim" },
    { "nvim-tree/nvim-tree.lua" } ,

	{ "nvim-treesitter/nvim-treesitter" , cmd = "TreeSitter" } ,
	
	-- 语言服务：
	-- LSP:
	{ "williamboman/mason.nvim" } ,
	{ "williamboman/mason-lspconfig.nvim" } ,
	{ "neovim/nvim-lspconfig" } ,
	
	-- C# LSP:
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
	-- { "saadparwaiz1/cmp_luasnip" } ,
	-- { "rafamadriz/friendly-snippets" } ,

	-- { "numToStr/Comment.nvim" } ,
	-- { "windwp/nvim-autopairs" } ,
	-- { "akinsho/bufferline.nvim" } ,
	-- { "lewis6991/gitsigns.nvim" }

	-- { 'nvim-lua/plenary.nvim' } ,
	-- { 'nvim-telescope/telescope.nvim' } ,

	-- 搜索：
    {
		'nvim-telescope/telescope.nvim' ,
		tag = '0.1.6' ,
		dependencies = { 'nvim-lua/plenary.nvim' }
    } ,

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
