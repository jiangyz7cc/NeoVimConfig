-- print("nvim-tree.Init:")

local e = require("nvim-tree")
local mc = require("Extension/nvim-tree/Map")
-- local cc = require("Extension/nvim-tree/Color")

local opt =
{
    on_attach = mc.MapKeys ,
	root_dirs = { "$Home" } ,
	sync_root_with_cwd = true ,
    respect_buf_cwd = true ,
	reload_on_bufenter = false ,
    select_prompts = true ,
    disable_netrw = true ,
	-- highlight_bookmarks = "all" ,
    filters =
    {
        dotfiles = true ,
    } ,
    sort =
    {
        sorter = "name" ,
        folders_first = true ,
        files_first = false ,
    } ,
    view =
    {
        centralize_selection = false ,
        cursorline = true ,
        debounce_delay = 15 ,
        side = "right" ,
        preserve_window_proportions = false ,
        number = false ,
        relativenumber = false ,
        signcolumn = "yes" ,
        width = 30 ,
        float =
		{
			enable = false ,
			quit_on_focus_loss = true ,
			open_win_config =
			{
			    relative = "editor" ,
			    border = "rounded" ,
			    width = 30 ,
			    height = 30 ,
			    row = 1 ,
			    col = 1 ,
			} ,
		} ,
    } ,
    renderer =
    {
        group_empty = true ,
    }
}

-- 设置扩展：
e.setup(opt)

-- print("nvim-tree.Init$")
