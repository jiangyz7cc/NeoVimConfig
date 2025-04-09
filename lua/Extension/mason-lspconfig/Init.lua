-- local lsplist = require("LSP.List")

local config =
{
	ensure_installed =
	{
		"lua_ls" ,
		"omnisharp"
	}
}

local extension = require("mason-lspconfig")

extension.setup(config)
