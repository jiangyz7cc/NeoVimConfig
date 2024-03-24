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
    -- { "folke/neoconf.nvim", cmd = "Neoconf" },
    -- { "folke/neodev.nvim" },
    { "folke/which-key.nvim" , cmd = "Whkey" },

    -- 文件管理器：
    -- { "nvim-neo-tree/neo-tree.nvim" },
    { "nvim-tree/nvim-tree.lua" },

	{ "nvim-treesitter/nvim-treesitter" },
	-- { ""/"" }

    -- 图标：
    { "nvim-tree/nvim-web-devicons" },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- 主题：
    { "EdenEast/nightfox.nvim" }
    -- { "folke/tokyonight.nvim" }
}

require("lazy").setup(opt)

-- print("lazy$")
