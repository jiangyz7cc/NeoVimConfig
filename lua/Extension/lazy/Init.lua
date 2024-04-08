-- print("lazy.Init:")

local p = require("Extension.lazy.Service.Preset")

-- p.InitAsFirstRun()
p.SetRuntimeEnvironment()

local e = require("lazy")
local c = require("Extension.lazy.Extension.Config")

e.setup(c)

-- print("lazy.Init$")
