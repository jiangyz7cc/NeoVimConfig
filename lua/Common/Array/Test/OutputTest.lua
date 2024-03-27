print("Test:")

local load = require("Common.Module.Load")

load.DeleteLoaded("Common.Array.Apply")
load.DeleteLoaded("Common.Array.Output")

local out = require("Common.Array.Output")

local a = { 1 , 2 , 3 }

print(out.Output(a))

print("Test$")
