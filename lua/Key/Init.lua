-- 引用：
    local g = vim.g

-- 映射：
    -- map(<Mode> , <SourceKey> , <TargetKey> , <Option>)

    -- local map = vim.api.nvim_set_keymap
    local map = vim.keymap.set

    local opt = { noremap = true } -- , slient = true }

-- Leader Key:
    g.mapleader = ","
    g.maplocalleader = ","

-- 插入模式：
    map("i" , "jk" , "<Esc>" , opt)
    map("i" , "<C-v>" , "<Esc>\"+p" , opt)

-- 正常模式：
    map("n" , "<leader>ls" , ":ls<CR>" , opt)
    map("n" , "<C-l>" , ":ls<CR>" , opt)

    map("n" , "<A-h>" , "<C-w>h" , opt)
    map("n" , "<A-j>" , "<C-w>j" , opt)
    map("n" , "<A-k>" , "<C-w>k" , opt)
    map("n" , "<A-l>" , "<C-w>l" , opt)

    -- 分割窗口：位于上侧 (sd: split up)
    map("n" , "<leader>su" , "<C-w>s<C-w>K")

    -- 分割窗口：位于下侧 (sd: split down)
    map("n" , "<leader>sd" , "<C-w>s")

    -- 分割窗口：位于左侧 (sr: split left)
    map("n" , "<leader>sl" , "<C-w>v<C-w>H")

    -- 分割窗口：位于右侧 (sr: split right)
    map("n" , "<leader>sr" , "<C-w>v")


-- 可视模式：
    map("v" , "J" , ":m '>+1<CR>gv=gv")
    map("v" , "K" , ":m '<-2<CR>gv=gv")

-- 命令模式：
    map("c" , "<C-k>" , "<Up>")
    map("c" , "<C-j>" , "<Down>")
