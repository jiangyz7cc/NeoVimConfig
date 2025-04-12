return
{
	{
		"Shatur/neovim-session-manager" ,
		lazy = true ,
		event = "VeryLazy" ,
		dependencies =
		{
			"nvim-lua/plenary.nvim"
		} ,
		config = function()
			local path = require('plenary.path')
			local config = require('session_manager.config')

			require("session_manager").setup(
					{
						-- 保存会话文件的目录：
						sessions_dir = path:new(vim.fn.stdpath('data'), 'sessions') ,
						session_filename_to_dir = session_filename_to_dir, -- Function that replaces symbols into separators and colons to transform filename into a session directory.
						dir_to_session_filename = dir_to_session_filename, -- Function that replaces separators and colons into special symbols to transform session directory into a filename. Should use `vim.uv.cwd()` if the passed `dir` is `nil`.

						autoload_mode = config.AutoloadMode.LastSession, -- Define what to do when Neovim is started without arguments. See "Autoload mode" section below.

						-- 退出或切换会话时，保存当前会话：
						autosave_last_session = true ,

						-- 如果当前环境不正常（没有可写入的缓冲区），则忽略保存会话：
						autosave_ignore_not_normal = true ,

						-- 排除目录：
						autosave_ignore_dirs = {} ,

						-- 排除文件：（根据文件类型）
						autosave_ignore_filetypes =
						{
							'gitcommit' ,
							'gitrebase' ,
						},

						-- 在保存时根据缓冲区类型忽略缓冲区：
						autosave_ignore_buftypes = {} ,

						-- 仅在会话时保存会话：
						autosave_only_in_session = false ,

						-- 让当先会话在会话列表中显示：
						load_include_current = false ,

						-- 最长路径长度：
						max_path_length = 80
					}
				)
		end
	}
}
