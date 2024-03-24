local opt =
{
	ensure_installed =
	{
		"clangd" ,
		"lua_ls"
	},
}

require("mason-lspconfig").setup(opt)
