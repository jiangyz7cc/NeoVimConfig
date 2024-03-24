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
	o.expandtab = false

-- 搜索：
	-- 增量：
	o.incsearch = true

	-- 高亮：
	o.hlsearch = true

-- 字符：
	-- 字母大小写形式：
		-- 忽略：
		o.ignorecase = true

		-- 智能判断：
		o.smartcase = true

	-- 不可见字符：
		-- 列出：
		o.list = false

		-- 显示替代：
		o.listchars =
		{
			space = '.',
			tab = '>--',
			nbsp = '+',
			trail = '-'
		}

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
	-- 更新 swap 文件的时间间隔：
	-- o.updatetime = 300

	-- 超时时间（输入悬空时的等待时间？）大小：
	-- o.timeoutlen = 100

	-- 使用系统剪切板
	o.clipboard:append("unnamedplus")

-- 新增：
	-- 显示匹配的对象：括号 ...
	-- 因为会跳到对象上一次，增加无效动作，所以关闭
	-- o.showmatch = false

	-- 设置程序窗口的标题
	o.title = true

	-- 对比：
	-- o.diffopt:append({'indent-heuristic', 'algorithm:histogram'})

	o.smoothscroll = true
	o.display:append('lastline')

-- require("Behavior/Curor")
