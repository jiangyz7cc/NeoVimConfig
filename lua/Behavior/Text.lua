local o = vim.opt

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
