local data = {}

function data.SetColorForNodes()
    vim.cmd(
        [[
            :hi      NvimTreeExecFile    guifg=#ffa0a0
            :hi      NvimTreeSpecialFile guifg=#ff80ff gui=underline
            :hi      NvimTreeSymlink     guifg=Yellow  gui=italic
            :hi link NvimTreeImageFile   Title
        ]]
    )
end

-- 命令：:NvimTreeHiTest 测试着色

return data
