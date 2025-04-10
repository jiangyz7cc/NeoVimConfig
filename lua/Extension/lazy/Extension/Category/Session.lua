return
{
	{
		"Shatur/neovim-session-manager",
		dependencies =
		{
			"nvim-lua/plenary.nvim"
		},
		config = function()
			local path = require('plenary.path')

			require("session_manager").setup(
					{
						sessions_dir = path:new('~/.config/nvim/sessions'), -- 自定义保存目录

						autoload_last_session = true, -- 启动时自动加载最后一次会话
						autosave_last_session = true,  -- 退出时自动保存当前会话
					}
				)
		end
	}
}
