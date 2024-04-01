print("Extension.telescope.Map:")

local api = require('telescope.builtin')
local model = require("Key.Map.Library.Model")

local nmap = model.Function.NormalMap

nmap("<Leader>sh" , "<cmd>lua print('telescope: hello')<CR>")

-- 文件：
-- 默认配置查找：
nmap("<Leader>ff" , api.find_files , "Find File")

-- 查找所有文件
nmap(
  "<Leader>fa" ,
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>" ,
  "Find all files"
)

nmap("<Leader>fo" , api.oldfiles , "Find Old File")

-- live_grep 需要安装：ripgrep
nmap("<Leader>fg" , api.live_grep , "Live Grep")

-- 缓冲区：
nmap("<Leader>fb" , api.buffers , "Find Buffer")
nmap("<Leader>fz" , api.current_buffer_fuzzy_find , "Find Content in Current Buffer")

-- 帮助：
nmap("<Leader>fh" , api.help_tags , "Find Help")

-- Other:
-- nmap("<Leader>ftm" , api.terms , "Find Terminal")
-- nmap("<Leader>fth" , api.themes , "Find Theme")

-- Git:
-- nmap("<Leader>fgc" , api.git_commits , "Find Git Commit")
-- nmap("<Leader>fgs" , api.git_status , "Find Git Status")

print("Extension.telescope.Map$")
