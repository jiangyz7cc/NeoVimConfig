local lsplist = require("Extension.mason-lspconfig.LSP.List")

local c =
{
	ensure_installed = lsplist
}

local e = require("mason-lspconfig")

e.setup(c)
