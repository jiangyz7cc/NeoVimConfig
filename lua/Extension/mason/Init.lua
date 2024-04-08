local c =
{
	ui =
	{
		icons =
		{
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
}

local e = require("mason")

e.setup(c)
