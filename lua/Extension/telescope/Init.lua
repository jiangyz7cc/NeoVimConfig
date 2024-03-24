local api = require('telescope.builtin')

local map = vim.keymap.set

-- live_grep 需要安装：ripgrep

map('n', '<leader>ff', api.find_files)
map('n', '<leader>fg', api.live_grep)
map('n', '<leader>fb', api.buffers)
map('n', '<leader>fh', api.help_tags)
