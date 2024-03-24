local function GetTime()
    return
        -- os.time()
        os.date("%H:%M:%S")
        -- os.date("%Y-%m-%d %H:%M:%S")
end

local function GetMyName()
    return [[ jiangyz ]]
end

local opt =
{
    options =
    {
        icons_enabled = true,
        theme = 'auto',
        component_separators =
        {
            -- 
            left = '',
            right = ''
        },
        section_separators =
        {
            -- 
            left = '',
            right = ''
        },
        disabled_filetypes =
        {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh =
        {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections =
    {
        lualine_a =
        {
            'mode'
        },
        lualine_b =
        {
            'filename'
        },
        lualine_c =
        {
            -- '%=',
            -- '%t%m',
            -- '%3p',
            -- "un" ,
            "selectioncount",
            "searchcount"
            -- 'filetype'
            -- 'branch',
            -- 'diff',
            -- 'diagnostics'
        },

        lualine_x =
        {
            GetTime
            -- "filesize"
            -- "buffers"
            -- "encoding"
            -- 'fileformat',
        },
        lualine_y =
        {
            "location"
        },
        lualine_z =
        {
            "progress"
        }
    },
    inactive_sections =
    {
        lualine_a =
        {
            "mode"
        },
        lualine_b =
        {
            "filename"
        },
        lualine_c =
        {
            "filetype"
        },

        lualine_x =
        {
        },
        lualine_y =
        {
            'location'
        },
        lualine_z =
        {
            "progress"
        }
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}

require('lualine').setup(opt)
