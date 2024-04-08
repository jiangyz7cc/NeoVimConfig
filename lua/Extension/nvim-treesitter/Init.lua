local e = require("nvim-treesitter.configs")

local c =
{
	ensure_installed =
	{
		"lua" ,
		"c" ,
		"c_sharp" ,
		-- "vim" ,
		-- "vimdoc" ,
		-- "query"
	} ,

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false ,
	auto_install = true ,
	ignore_install =
	{
		"javascript"
	} ,

	highlight =
	{
		enable = true ,

		-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
		-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
		-- the name of the parser)
		-- list of language that will be disabled
		disable =
		{
			-- "c"
		},

		additional_vim_regex_highlighting = false ,
	} ,

	incremental_selection =
	{
		enable = true ,
		keymaps =
		{
			init_selection = "gnn" ,
			node_incremental = "grn" ,
			scope_incremental = "grc" ,
			node_decremental = "grm"
		}
	} ,
	indent =
	{
		enable = true
	}
}

e.setup(c)
