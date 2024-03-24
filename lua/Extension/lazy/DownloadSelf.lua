local data = {}

local data.function Download(dp)
    vim.fn.system(
    {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        dp,
    }
    )
end

return data