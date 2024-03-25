local o = vim.opt

-- 光标：

-- 增加对鼠标的支持
o.mouse = 'a'

-- 闪烁：间隔1000毫秒一次
o.guicursor:append('a:blinkon1000-blinkoff1000-blinkwait1000')

-- 高亮行：
-- o.cursorcolumn = true

-- 高亮列：
-- o.cursorline = true
