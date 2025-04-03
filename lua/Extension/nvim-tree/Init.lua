-- print("nvim-tree.Init:")

local e = require("nvim-tree")
local mc = require("Extension/nvim-tree/Map")
local cc = require("Extension/nvim-tree/Color")

local c =
{
    on_attach = mc.MapLocalKeys ,

	root_dirs = { "$Home" } ,
	sync_root_with_cwd = true ,

    respect_buf_cwd = false ,
	reload_on_bufenter = false ,
    select_prompts = true ,
    disable_netrw = true ,

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
        width = 40 ,
        side = "right" ,
        centralize_selection = true ,
        debounce_delay = 15 ,
        preserve_window_proportions = true ,
        number = true ,
        relativenumber = true ,
        cursorline = true ,
        signcolumn = "yes" ,
        float =
		{
			enable = false ,
			quit_on_focus_loss = true ,
			open_win_config =
			{
			    width = 40 ,
			    height = 35 ,
			    row = 1 ,
			    col = 100 ,
			    relative = "editor" ,
			    border = "rounded"
			}
		} ,
    } ,

    renderer =
    {
		-- 折叠空目录：
		-- 在当前目录为空，且没有其他同级目录时，将当前目录与上一层级目录连结
        group_empty = false ,

		-- 节点名超过窗口长度时，使用浮动窗口显示
		full_name = true ,

		indent_width = 4 ,

		indent_markers =
		{
			inline_arrows = true ,
			icons =
			{
				corner = "└" ,
				edge = "│" ,
				item = "│" ,
				bottom = "─" ,
				none = " "
			}
		} ,

		icons =
		{
			show =
			{
				folder = false ,
				folder_arrow = true ,
				file = false ,
				bookmarks = true ,
				diagnostics = true ,
				git = true
			}
			-- glyphs =
			-- {
			-- 	arrow_closed = "" ,
			-- 	arrow_open = "" ,
			-- 	default = "" ,
			-- 	open = "" ,
			-- 	empty = "" ,
			-- 	empty_open = "" ,
			-- 	symlink = "" ,
			-- 	symlink_open = "" ,
			--
			-- 	git =
			-- 	{
			-- 		ignored = "◌" ,
			-- 		untracked = "★" ,
			-- 		unstaged = "✗" ,
			-- 		staged = "✓" ,
			-- 		unmerged = "" ,
			-- 		renamed = "➜" ,
			-- 		deleted = ""
			-- 	}
			-- }
		} ,
    } ,

	git =
	{
		enable = false
	}
}

e.setup(c)

mc.MapGlobalKeys()
cc.SetColorForNodes()

-- print("nvim-tree.Init$")
