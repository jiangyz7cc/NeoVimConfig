local cre = require("Common.Array.Create")
local out = require("Common.Array.Output")

local op = out.Output

function CreSeqTest()
	local a1 = cre.CreateSequential(3)
	op(a1)
end

function CreRanTest()
	local a2 = cre.CreateRanged(1 , 3)
	op(a2)
end

CreSeqTest()
-- CreRanTest()
