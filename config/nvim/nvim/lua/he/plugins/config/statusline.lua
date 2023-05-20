local status, feline = pcall(require, 'feline')
if not status then
    return
end

local one_monokai = {
	fg = "#abb2bf",
	bg = "#1e2024",
	green = "#98c379",
	yellow = "#e5c07b",
	purple = "#c678dd",
	orange = "#d19a66",
	peanut = "#f6d5a4",
	red = "#e06c75",
	aqua = "#61afef",
	darkblue = "#282c34",
	dark_red = "#f75f5f",
}

local vi_mode_colors = {
	NORMAL = "green",
	OP = "green",
	INSERT = "yellow",
	VISUAL = "purple",
	LINES = "orange",
	BLOCK = "dark_red",
	REPLACE = "red",
	COMMAND = "aqua",
}

local c = {
    vim_mode = {
        provider = {
            name = "vi_mode",
            opts = {
                show_mode_name = true
            }
        },
        hl = function ()
            return {
                fg = require("feline.providers.vi_mode").get_mode_color(),
                bg = "darkblue",
                style = "italic",
            }
        end,
        left_sep = "block",
        right_sep = "block",
    },
    git_branch = {
        provider = "git_branch",
        hl = {
            fg = "peanut",
            bg = "darkblue",
            style = "bold",
        },
        left_sep = "block",
        right_sep = "block",
    },
    fileinfo = {
        provider = {
            name = "file_info",
            opts = {
                type = "relative-short",
            },
        },
        hl = {
            bg = "darkblue",
            style = "italic",
        },
        left_sep = "block",
        right_sep = "block",
    },
    diagnostic_errors = {
        provider = "diagnostic_errors",
        hl = {
            fg = "red",
            bg = "darkblue",
        }
    },
    diagnostic_warnings = {
        provider = "diagnostic_warnings",
        hl = {
            fg = "yellow",
            bg = "darkblue",
        }
    },
    diagnostic_hints = {
        provider = "diagnostic_hints",
        hl = {
            fg = "aqua",
            bg = "darkblue",
        },
    },
    diagnostic_info = {
        provider = "diagnostic_info",
    },
    filetype = {
        provider = {
            name = "file_type",
            opts = {
                filetype_icon = true,
                case = "titlecase",
            },
        },
        hl = {
            fg = "grey",
            bg = "darkblue",
            style = "bold",
        },
        left_sep = "block",
        right_sep = "block",
    },
    file_encoding = {
        provider = "file_encoding",
        hl = {
            fg = "orange",
            bg = "darkblue",
            style = "italic",
        },
        left_sep = "block",
        right_sep = "block",
    },
    position = {
        provider = "position",
        hl = {
            fg = "green",
            bg = "darkblue",
            style = "bold",
        },
        left_sep = "block",
        right_sep = "block",
    },
    line_percentage = {
        provider = "line_percentage",
        hl = {
            fg = "aqua",
            bg = "darkblue",
            style = "italic",
        },
        left_sep = "block",
        right_sep = "block",
    },
    scroll_bar = {
        provider = "scroll_bar",
        hl = {
            fg = "yellow",
            bg = "darkblue",
            style = "bold",
        },
        left_sep = "block",
        right_sep = "block",
    },

    left_separator = {
        hl = {
            bg = "darkblue",
        },
        right_sep = {
            str = "right_filled",
            always_visible = true,
        },
    },
    right_separator = {
        hl = {
            bg = "darkblue",
        },
        left_sep = {
            str = "left_filled",
            always_visible = true,
        }
    }
}

local left = {
    c.vim_mode,
    c.git_branch,
    c.diagnostic_info,
    c.diagnostic_hints,
    c.diagnostic_warnings,
    c.diagnostic_errors,
    c.left_separator,
}
local middle = {
    c.right_separator,
    c.file_encoding,
    c.fileinfo,
    c.filetype,
    c.left_separator,
}
local right = {
    c.right_separator,
    c.position,
    c.line_percentage,
    c.scroll_bar,
}

local components = {
    active = {
        left,
        middle,
        right,
    },
    inactive = {
        left,
        middle,
        right,
    },
}

feline.setup({
    components = components,
    theme = one_monokai,
    vi_mode_colors = vi_mode_colors,
})
