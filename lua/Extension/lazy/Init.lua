-- print("lazy:")

-- 获取 lazy 的目录路径：
local ldp = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- print("Lazy's Dir Path:" .. ldp)

-- 如果 lazy 的目录路径不存在，则执行下载命令：
-- if not vim.loop.fs_stat(ep)
-- then
--     require("Extension/lazy/DownloadSelf").Download(ldp)
-- end

vim.opt.rtp:prepend(ldp)

local opt =
{
    -- 配置管理：
    -- { "folke/neoconf.nvim", cmd = "NeoConf" },
    -- { "folke/neodev.nvim" },
    { "folke/which-key.nvim" , cmd = "WhichKey" },

    -- 文件管理器：
    -- { "nvim-neo-tree/neo-tree.nvim" },
    { "nvim-tree/nvim-tree.lua" } ,

	{ "nvim-treesitter/nvim-treesitter" } ,
	
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

	-- 片段：
	{ "L3MON4D3/LuaSnip" } ,
	{ "saadparwaiz1/cmp_luasnip" } ,
	{ "rafamadriz/friendly-snippets" } ,

	-- { "numToStr/Comment.nvim" } ,
	-- { "windwp/nvim-autopairs" } ,
	-- { "akinsho/bufferline.nvim" } ,
	-- { "lewis6991/gitsigns.nvim" }

	-- { 'nvim-lua/plenary.nvim' } ,
	-- { 'nvim-telescope/telescope.nvim' } ,

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

require("lazy").setup(opt)

-- print("lazy$")
