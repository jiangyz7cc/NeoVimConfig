local prefix = "Extension.lazy.Extension.Category"

local names =
{
	"Preset" ,
	"File" ,
	"Lang" ,
	"Key" ,
	"Navigation" ,
	"Session" ,
	"Other" ,
	"Appearance"
}

local fullNames = {}

for index , suffix in ipairs(names) do
	fullNames[index] = require(prefix .. "." .. suffix)
end

return fullNames
