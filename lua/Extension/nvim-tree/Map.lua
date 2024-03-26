-- 映射：

-- print("nvim-tree.Map:")

local data = {}

local api = require("nvim-tree.api")

local map = vim.keymap.set

local function OutputNodePath()
    local node = api.tree.get_node_under_cursor()
    print(node.absolute_path)
end

-- 局部定义：

-- 映射函数：
-- 范围：nvim-tree 缓冲区中
function data.MapKeys(bufno)
    local function copt(desc)
        return
        {
            desc = "nvim-tree: " .. desc,
            buffer = bufno,
            noremap = true,
            silent = true,
            nowait = true
        }
    end

    -- 默认映射：
    -- :help nvim-tree-mappings-default
    api.config.mappings.default_on_attach(bufno)

    -- 自定映射：
    map("n" , "h" , api.tree.change_root_to_parent , copt("Change root to parent"))
    map("n" , "l" , api.tree.change_root_to_node , copt("Change root to node"))
    map("n" , "?" , api.tree.toggle_help , copt("Toggle help"))

    -- (er: explorer refresh)
    -- map("n" , "<leader>er" , api.tree.reload , copt("Reload Explorer"))

    -- 调用：<C-f> 的反作用函数：回到之前的窗口
    -- 从而可以实现 <C-f> 来在编辑和文件管理器之间来回切换
    map("n" , "<C-f>" , "<C-w>w")

    -- (ei: explorer index(of the file in the current buffer))
    map("n" , "<leader>ei" , api.tree.find_file , copt("Index File"))

    -- (ec: explorer collapse)
    -- map("n" , "<leader>ec" , api.tree.collapse_all , copt("Collapse All"))

    map("n" , "<C-p>" , OutputNodePath , copt("OutputNodePath"))
end

-- 全局定义：

-- 注意：
--  Toggle作为切换，同时也是启动函数
--  如果将映射定义放在局部定义函数中，将无法调用
--  要先启动nvim-tree才能调用启动函数，这本来就不符合逻辑
-- (et: explorer toggle)
map("n" , "<C-h>" , api.tree.toggle)

-- (ef: explorer focus)
map("n" , "<C-f>" , api.tree.focus)

-- print("nvim-tree.Map$")

return data
