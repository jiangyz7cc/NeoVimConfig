local cmp_status_ok, cmp = pcall(require, "cmp")

if not cmp_status_ok then
	print("require cmp failed!")
	return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")

if not snip_status_ok then
	print("require luasnip failed!")
	return
end

require("luasnip.loaders.from_vscode").lazy_load()

local check_backspace = function()
	local col = vim.fn.col "." - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local opt =
{
	snippet =
	{
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert(
		{
			['<C-b>'] = cmp.mapping.scroll_docs(-4),
			['<C-f>'] = cmp.mapping.scroll_docs(4),
			['<C-e>'] = cmp.mapping.abort(), -- 取消补全，ESC 也可
			['<CR>'] = cmp.mapping.confirm({ select = true }),

			["<Tab>"] = cmp.mapping(
				function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.expandable() then
						luasnip.expand()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					elseif check_backspace() then
						fallback()
					else
						fallback()
					end
				end,
				{
					"i",
					"s",
				}
			),

			["<S-Tab>"] = cmp.mapping(
				function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end
				,
				{
					"i",
					"s",
				}
			),
		}
	),

	sources = cmp.config.sources(
		{
			{ name = 'nvim_lsp' },
			{ name = 'luasnip' },
			{ name = 'csharp_ls' },
			{ name = 'path' },
		} ,
		{
			{ name = 'buffer' },
		}
	)
}

cmp.setup(opt)
