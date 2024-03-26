local data = {}

function data.SetColorForNodes()
    -- 使用命令：:NvimTreeHiTest 显示图标，并对图标和文本上色
    vim.cmd(
        [[
            :hi      NvimTreeExecFile    guifg=#ffa0a0
            :hi      NvimTreeSpecialFile guifg=#ff80ff gui=underline
            :hi      NvimTreeSymlink     guifg=Yellow  gui=italic
            :hi link NvimTreeImageFile   Title
        ]]
    )
end

return data
