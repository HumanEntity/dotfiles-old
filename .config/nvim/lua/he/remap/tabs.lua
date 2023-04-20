
-- Tabs and Buffer "management"
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew, { desc = "Creates new tab" })
vim.keymap.set("n", "<leader>tc", vim.cmd.tabclose)
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>tp", vim.cmd.tabprevious)

vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")

-- Pane (Windows) management
vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>h", vim.cmd.split)
vim.keymap.set("n", "<leader>x", "<C-w>c")
