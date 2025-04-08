local Bind = vim.api.nvim_create_user_command

local GetFormattedTimeString = vim.fn.strftime

function GetTimeString()
	-- %T → %H:%M:%S（14:05:09）
	return GetFormattedTimeString("%H:%M:%S")
end

function GetDateString()
	-- %F → %Y-%m-%d（2023-07-15）
	return GetFormattedTimeString("%Y-%m-%d")
end

function GetTimeStampString()
	return GetFormattedTimeString("%Y%m%d_%H%M%S")
end

Bind(
	"Time" ,
	print(GetTimeString())
	{}
)

Bind(
	"Date" ,
	print(GetDateString())
	{}
)

Bind(
	"TimeStamp" ,
	print(GetTimeStampString()) ,
	{}
)
