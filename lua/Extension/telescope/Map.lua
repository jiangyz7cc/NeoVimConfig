local api = require('telescope.builtin')

local map = vim.keymap.set

-- live_grep 需要安装：ripgrep

-- 文件：
-- 默认配置查找：
map('n', '<leader>ff', api.find_files)

-- 查找所有文件
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "Find all files" }
)

map("n", "<leader>fo", api.oldfiles)

map('n', '<leader>fg', api.live_grep)

-- 缓冲区：
map('n', '<leader>fb', api.buffers)
map("n", "<leader>fz", api.current_buffer_fuzzy_find)

-- 帮助：
map('n', '<leader>fh', api.help_tags)

-- Git:
-- map("n", "<leader>cm", api.git_commits)
-- map("n", "<leader>gt", api.git_status)

-- Other:
-- map("n", "<leader>pt", api.terms)
-- map("n", "<leader>th", api.themes)
