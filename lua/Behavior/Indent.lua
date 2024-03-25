local o = vim.opt

-- 缩进：

local tablen = 4

-- 模式：
o.autoindent = true
o.smartindent = true

-- 制表符长度：
o.tabstop = tablen
o.softtabstop = tablen

-- 偏移：
o.shiftround = true
o.shiftwidth = tablen

-- 展开Tab：
o.expandtab = false
