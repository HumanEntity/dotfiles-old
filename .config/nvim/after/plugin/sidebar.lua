local sidebar = require('sidebar-nvim')
sidebar.setup({
    open = false,
    side = "left",
    hide_statusline = false,
    update_interval = 1000,
    sections = { "git", "diagnostics", "symbols", "files", "containers", "TODOs", "buffers" },
    initial_width = 35,
    section_separator = {"", "-----", ""},
})
