-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
require("neodev").setup(
	{
		-- 设置：留空则使用默认配置
	}
)

-- then setup your lsp server as usual
local lspconfig = require('lspconfig')

-- example to setup lua_ls and enable call snippets
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
})
