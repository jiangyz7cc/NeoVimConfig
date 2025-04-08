local config =
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

local extension = require("mason")

extension.setup(config)
