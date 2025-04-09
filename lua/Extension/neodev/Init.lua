-- 注意：需要在设置：lspconfig 之前进行
require("neodev").setup(
	{
		-- 设置：留空则使用默认配置
	}
)

-- 设置 lspconfig：
local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
})
