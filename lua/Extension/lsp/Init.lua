local nvlsp = require('cmp_nvim_lsp')
local lspc = require("lspconfig")

lspc.lua_ls.setup(
	{
		capabilities = nvlsp.default_capabilities()
	}
)
