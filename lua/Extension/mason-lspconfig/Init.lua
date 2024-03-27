local opt =
{
	ensure_installed =
	{
		"lua_ls" ,
		"clangd" ,
		"csharp_ls"
	},
}

local e = require("mason-lspconfig")

e.setup(opt)
