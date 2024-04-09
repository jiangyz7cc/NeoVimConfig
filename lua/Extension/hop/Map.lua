local data = {}

local model = require("Key.Map.Library.Model")

local nmap = model.Function.NormalMap
local vmap = model.Function.VisualMap
-- local opt = model.Option.DefaultOption;

function data.MapKeys()
	nmap("<Leader><Leader>w" , "<cmd>HopWordAC<CR>")
	nmap("<Leader><Leader>b" , "<cmd>HopWordBC<CR>")
	nmap("<Leader><Leader>j" , "<cmd>HopLineAC<CR>")
	nmap("<Leader><Leader>k" , "<cmd>HopLineBC<CR>")

	vmap("<Leader><Leader>w" , "<cmd>HopWordAC<CR>")
	vmap("<Leader><Leader>b" , "<cmd>HopWordBC<CR>")
	vmap("<Leader><Leader>j" , "<cmd>HopLineAC<CR>")
	vmap("<Leader><Leader>k" , "<cmd>HopLineBC<CR>")

	-- nmap("s" , "<cmd>HopChar2AC<CR>")
	-- nmap("S" , "<cmd>HopChar2BC<CR>")

	-- vmap("s" , "<cmd>HopChar2AC<CR>")
	-- vmap("S" , "<cmd>HopChar2BC<CR>")

	MapFTKeys()
end

function MapFTKeys()
	local hop = require("hop")
	local hint = require("hop.hint")

	local vimmap = vim.keymap.set
	local hintdir = hint.HintDirection

	local hc1 = hop.hint_char1

	local rmopt = { remap = true }

	function MapFT(key , dir , offset)
		vimmap(
			'' ,
			key ,
			function()
				if(offset == nil)
				then
					offset = 0
				end

				hc1(
					{
						direction = dir ,
						current_line_only = true ,
						hint_offset = offset
					}
				)
			end,
			rmopt
		)
	end

	MapFT("f" , hintdir.AFTER_CURSOR)
	MapFT("F" , hintdir.BEFORE_CURSOR)
	MapFT("t" , hintdir.AFTER_CURSOR , -1)
	MapFT("T" , hintdir.BEFORE_CURSOR , -1)

end

return data
