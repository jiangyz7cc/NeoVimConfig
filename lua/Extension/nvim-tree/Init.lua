-- print("nvim-tree.Init:")

local e = require("nvim-tree")
local mc = require("Extension/nvim-tree/Map")
-- local cc = require("Extensino/nvim-tree/Color")

local opt =
{
    filters =
    {
        dotfiles = true,
    },
    sort =
    {
        sorter = "name", -- "case_sensitive",
        folders_first = true,
        files_first = false,
    },
    view =
    {
        centralize_selection = false,
        cursorline = true,
        debounce_delay = 15,
        side = "right",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        width = 30
    },
    renderer =
    {
        group_empty = true,
    },
    on_attach = mc.MapKeys
}

-- 设置扩展：
e.setup(opt)

-- print("nvim-tree.Init$")
