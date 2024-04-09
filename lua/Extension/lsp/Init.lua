local config = require("lspconfig")
local nvconfig = require("cmp_nvim_lsp")

local defaultConfig = 
{
	capabilities = nvconfig.default_capabilities()
}

config.lua_ls.setup(defaultConfig)

config.clangd.setup(defaultConfig)

config.csharp_ls.setup(defaultConfig)
