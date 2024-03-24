local o = vim.opt
local cmd = vim.cmd

-- 行：
	-- 号：
	o.number = true
	o.numberwidth=4

	-- 相对号：
	o.relativenumber = true

-- 列：
	-- 标记列：
	o.signcolumn = "yes"

	-- 颜色列：
	-- o.colorcolumn = "80"

-- 背景：
	-- 颜色：
	o.background = "dark"

-- 命令行：
	-- 高：
	o.cmdheight = 1

-- 终端：
	-- 界面颜色：
	o.termguicolors = true

require("Appearance/StatusLine")
require("Appearance/Theme")
