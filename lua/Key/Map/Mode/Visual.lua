local map = vim.keymap.set

-- local opt = { noremap = true } -- , slient = true }

-- 可视模式：
map("v" , "J" , ":m '>+1<CR>gv=gv")
map("v" , "K" , ":m '<-2<CR>gv=gv")
