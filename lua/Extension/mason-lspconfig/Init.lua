local lsplist = require("Extension.mason-lspconfig.LSP.List")

local config =
{
	ensure_installed = lsplist
}

local extension = require("mason-lspconfig")

extension.setup(config)
