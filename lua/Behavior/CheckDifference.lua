function ToggleDifferentModeForWindows()  
    local win_count = vim.fn.winnr('$')  

    if win_count < 2 then  
        vim.notify("需要至少两个窗口来比较", 'warn')  
        return  
    end  
  
    -- 切换到下一个窗口并设置差异比较  
    vim.cmd('wincmd w')  
    vim.cmd('diffthis')  
  
    -- 切换回上一个窗口并设置差异比较  
    vim.cmd('wincmd p')  
    vim.cmd('diffthis')  
  
    -- 如果需要，可以在这里添加更多配置  
end  
  
-- 设置一个键映射来调用这个函数  
vim.api.nvim_set_keymap('n', '<leader>df', ':lua ToggleDifferentModeForWindows()<CR>', { noremap = true, silent = true })  
