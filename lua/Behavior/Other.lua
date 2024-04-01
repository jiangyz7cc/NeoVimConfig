local o = vim.opt

-- 其他：

-- 更新 swap 文件的时间间隔：
-- o.updatetime = 300

-- 超时时间（输入悬空时的等待时间？）大小：
o.timeoutlen = 500

-- 使用系统剪切板
o.clipboard:append("unnamedplus")

-- o.smoothscroll = true
-- o.display:append('lastline')

-- 显示匹配的对象：括号 ...
-- 因为会跳到对象上一次，增加无效动作，所以关闭
-- o.showmatch = false

-- 对比：
-- o.diffopt:append({'indent-heuristic', 'algorithm:histogram'})
