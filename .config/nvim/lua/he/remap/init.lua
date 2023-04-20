require("he.remap.tabs")
require("he.remap.navigation")
require("he.remap.file")

vim.keymap.set("n", "<F11>", vim.cmd.TagbarToggle)
vim.keymap.set("n", "<F12>", vim.cmd.DocsViewToggle)
