local o = vim.opt
local cmd = vim.cmd

-- 行：
    -- 号：
    o.number = true
    o.numberwidth=4

    -- 相对号：
    o.relativenumber = true

    -- 高亮光标所在：
    -- o.cursorline = true

-- 列：
    -- 光标列：
    -- o.cursorcolumn = true

    -- 标记列：
    o.signcolumn = "yes"

    -- 颜色列：
    -- o.colorcolumn = "80"

-- 背景：
    -- 颜色：
    o.background = "dark"

-- 状态栏：
    -- 显示模式：显示当前Vim处于的模式名
    -- 当开启了状态栏插件时，模式会自动显示于状态栏之上
    -- 而设置此选项显示时，模式将显示于状态栏之下，与上方重复
    -- 因此关闭显示
    o.showmode = false

    -- 显示标签页：2: 总是
    o.showtabline = 2

    -- 命令行高：
    o.cmdheight = 2

-- 终端：
    -- 界面颜色：
    o.termguicolors = true

-- 主题：
    cmd("colorscheme carbonfox")
    --[[
        carbonfox
        slate
        dawnfox
        terafox
        nightfox
        tokyonight
    --]]
