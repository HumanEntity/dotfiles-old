vim.keymap.set("n", "<leader>pf", vim.cmd.Ex)

--vim.keymap.set("n", "<F10>", vim.cmd.NvimTreeToggle)
--vim.keymap.set("n", "<F10>", vim.cmd.NeoTreeFocusToggle)
--vim.keymap.set("n", "<F11>", vim.cmd.NeoTreeFloatToggle)
--vim.keymap.set("n", "<F12>", vim.cmd.TagbarToggle)

vim.keymap.set("n", "<F9>", vim.cmd.SidebarNvimToggle)
vim.keymap.set("n", "<F10>", vim.cmd.NeoTreeFocusToggle)
vim.keymap.set("n", "<F11>", vim.cmd.NeoTreeFloatToggle)
vim.keymap.set("n", "<F12>", vim.cmd.DocsViewToggle)
vim.keymap.set("n", "<leader>x", ":cd ..<CR>")

vim.keymap.set("n", "<leader><down>", "<C-w>w")
vim.keymap.set("n", "<Leader><up>", "<c-w>W")
vim.keymap.set("n", "<Leader><left>", "<c-w>h")
vim.keymap.set("n", "<Leader><right>", "<c-w>l")

vim.keymap.set("n", "<left>", "<Nop>")
vim.keymap.set("n", "<down>", "<Nop>")
vim.keymap.set("n", "<up>", "<Nop>")
vim.keymap.set("n", "<right>", "<Nop>")

vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

vim.keymap.set("n", "<leader>n", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>c", vim.cmd.tabclose)
vim.keymap.set("n", "<leader>]", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>[", vim.cmd.tabprevious)
