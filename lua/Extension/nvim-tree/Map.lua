-- 映射：

-- print("nvim-tree.Map:")

local data = {}

local api = require("nvim-tree.api")
local model = require("Key.Map.Library.Model")

local nmap = model.Function.NormalMap
local dopt = model.Option.CreateDefaultOption()

-- no: buffer no
local function CreateBufferMapOption(no)
	local opt = dopt

	opt.buffer = no

	return opt
end

local function OutputNodePath()
    local node = api.tree.get_node_under_cursor()
	local path = node.absolute_path

    print(path)
end

-- 映射：

-- 局部：
-- 范围：nvim-tree 缓冲区中
function data.MapLocalKeys(bufno)

	-- 缓冲区选项：Buffer Option
	local bopt = CreateBufferMapOption(bufno)

    -- 默认映射：
    -- :help nvim-tree-mappings-default
    api.config.mappings.default_on_attach(bufno)

    -- 自定映射：
    nmap("h" , api.tree.change_root_to_parent , "Set Root to Parent" , bopt)
    nmap("l" , api.tree.change_root_to_node , "Set Root to Node" , bopt)
    nmap("?" , api.tree.toggle_help  , "Toggle Help" , bopt)

    -- 调用：<C-f> 的反作用函数：回到之前的窗口
    -- 从而可以实现 <C-f> 来在编辑和文件管理器之间来回切换
    nmap("<C-f>" , "<C-w>w" , "Back" , bopt)

    -- 折叠所有项目：(ec: explorer collapse)
    nmap("<Leader>ec" , api.tree.collapse_all , "Collapse All" , bopt)

    -- 重新加载树：(er: explorer reload)
    -- nmap(<Leader>er" , api.tree.reload , "Reload Explorer" , bopt)

    nmap("<C-p>" , OutputNodePath , "Output Path of Node" , bopt)
end

-- 全局：
function data.MapGlobalKeys()
	-- 注意：
	-- 以下为全局映射
	-- 如：Toggle() 作为切换，同时也是启动函数
	-- 如果将映射定义放在局部映射函数中，将无法调用

	-- 正常选项：Normal Option
	local nopt = model.Option.CreateDefaultOption()

	nmap("<C-h>" , api.tree.toggle , "Toggle Tree")

	nmap("<C-f>" , api.tree.focus , "Focus Tree")

	-- 定位文件：在树中定位当前缓冲区对应的文件
	nmap("<Leader>ei" , api.tree.find_file , "Index File" , nopt)

	local vimmap = vim.keymap.set

	vimmap("n" , "<C-k>" , "<cmd>lua print('nvim-tree: hello')<CR>")
	vimmap("n" , "<Leader>sh" , "<cmd>lua print('nvim-tree: hello')<CR>")

end

-- print("nvim-tree.Map$")

return data
