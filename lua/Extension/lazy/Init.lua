-- print("lazy.Init:")

local p = require("Extension.lazy.Service.Preset")

p.Init()

local e = require("lazy")
local c = require("Extension.lazy.Extension.Config")

e.setup(c)

-- print("lazy.Init$")
