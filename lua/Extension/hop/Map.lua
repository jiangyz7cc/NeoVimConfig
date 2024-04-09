local model = require("Key.Map.Library.Model")

local nmap = model.Function.NormalMap
local vmap = model.Function.VisualMap
-- local opt = model.Option.DefaultOption;

nmap("<Leader><Leader>b" , "<cmd>HopWordBC<CR>")
nmap("<Leader><Leader>w" , "<cmd>HopWordAC<CR>")
nmap("<Leader><Leader>j" , "<cmd>HopLineAC<CR>")
nmap("<Leader><Leader>k" , "<cmd>HopLineBC<CR>")

vmap("<Leader><Leader>w" , "<cmd>HopWordAC<CR>")
vmap("<Leader><Leader>b" , "<cmd>HopWordBC<CR>")
vmap("<Leader><Leader>j" , "<cmd>HopLineAC<CR>")
vmap("<Leader><Leader>k" , "<cmd>HopLineBC<CR>")

nmap("s" , "<cmd>HopChar2AC<CR>")
nmap("S" , "<cmd>HopChar2BC<CR>")
vmap("s" , "<cmd>HopChar2AC<CR>")
vmap("S" , "<cmd>HopChar2BC<CR>")
