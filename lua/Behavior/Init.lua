local o = vim.opt

-- 缩进：
    -- 模式：
    o.autoindent = true
    o.smartindent = true

    -- 制表符长度：
    o.tabstop = 4
    o.softtabstop = 4

    -- 偏移：
    o.shiftround = true
    o.shiftwidth = 4

    -- 展开Tab：
    o.expandtab = true

-- 搜索：
    -- 增量：
    o.incsearch = true

    -- 高亮：
    o.hlsearch = false

    -- 字母大小写形式：
    -- 忽略：
    o.ignorecase = true

    -- 智能判断：
    o.smartcase = true

-- 列出：
    -- 不可见字符：
    -- o.list = false
    -- o.listchars = "space:·,tab:>"

-- 折叠：
    -- 折行：
    o.wrap = false

    -- 字符：（行结尾可以跳到下一行）
    o.whichwrap = 'b,s,<,>,[,],h,l'

-- 补全：
    -- 选项：
    o.completeopt = "menuone,preview" -- noselect,noinsert"

    -- 菜单：狂野模式
    o.wildmenu = true


-- 缓冲区：
    -- 允许隐藏被修改过的buffer：
    o.hidden = true

-- 窗口：
    -- 分割：
    o.splitright = true
    o.splitbelow = true

    -- 距离：
        -- 移动时光标距离边缘行数：
        --o.scrolloff = 5
        --o.sidescrolloff = 5

-- 其他：
    -- 自动加载：（当文件被外部程序修改时）
    o.autoread = true

    -- 更新时间间隔：
    -- o.updatetime = 300

    -- 超时时间大小：
    -- o.timeoutlen = 100

    -- 支持鼠标：
    -- o.mouse:append("a")

    o.clipboard:append("unnamedplus")
