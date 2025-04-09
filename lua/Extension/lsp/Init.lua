local config = require("lspconfig")
local cmpConfig = require("cmp_nvim_lsp")

local defLangConfig =
{
	capabilities = cmpConfig.default_capabilities()
}

config.lua_ls.setup(defLangConfig)

config.clangd.setup(defLangConfig)

-- config.csharp_ls.setup(defLangConfig)
config.omnisharp.setup(defLangConfig)
