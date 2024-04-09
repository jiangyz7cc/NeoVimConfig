-- print("Extension.telescope.Map:")

local api = require('telescope.builtin')
local model = require("Key.Map.Library.Model")

local nmap = model.Function.NormalMap

-- nmap("<Leader>sh" , "<cmd>lua print('telescope: hello')<CR>")

-- 文件：

-- 默认配置查找：
nmap("<leader>fff" , api.find_files , "Find File")
nmap("<C-g>f" , api.find_files , "Find File")

-- 查找所有文件
nmap(
  "<leader>faf" ,
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>" ,
  "Find all files"
)

nmap("<leader>fof" , api.oldfiles , "Find Old File")

-- live_grep 需要安装：ripgrep
nmap("<leader>fbg" , api.live_grep , "Live Grep")

-- 缓冲区：
nmap("<leader>fbf" , api.buffers , "Find Buffer")
nmap("<leader>fct" , api.current_buffer_fuzzy_find , "Find Content in Current Buffer")

-- 帮助：
nmap("<leader>fhp" , api.help_tags , "Find Help")

-- 其他：
nmap("<leader>ftm" , api.terms , "Find Terminal")
nmap("<leader>fth" , api.themes , "Find Theme")

-- Git:
-- nmap("<Leader>fgc" , api.git_commits , "Find Git Commit")
-- nmap("<Leader>fgs" , api.git_status , "Find Git Status")

-- print("Extension.telescope.Map$")
