local prefix = "Extension.lazy.Extension.Category"

local names =
{
	"preset" ,
	"file" ,
	"lang" ,
	"key" ,
	"navigation" ,
	"other" ,
	"appearance"
}

local fullNames = {}

for index , suffix in ipairs(names) do
	fullNames[index] = require(prefix .. suffix)
end

return fullNames
