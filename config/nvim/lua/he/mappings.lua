local map = function(mode, lhs, rhs, opts)
	require("he.utils").map.set(mode, lhs, rhs, opts, { silent = true })
end

map("n", "<ESC>", function()
	vim.cmd("noh")
end)

-- Hub
map("n", "<leader>hd", ":Alpha<CR>", { desc = "Dashboard" })
map("n", "<leader>hr", ":source $HOME/.config/nvim/init.lua<CR>", { desc = "Hot reload" })

-- Splitting
map("n", "<leader>ss", ":vsplit<CR>")
map("n", "<leader>sd", ":split<CR>")

-- Code Folding
map("n", "<TAB>", "za")
map("n", "<leader>zf", "zf%")

vim.g.tagbar_focus_key = vim.api.nvim_replace_termcodes("<C-w>l", true, true, true)
map("n", "<F12>", function()
	vim.cmd(":TagbarToggle<CR>")
	vim.cmd([[call nvim_feedkeys(g:tagbar_focus_key, 'n', v:false)]])
	-- vim.api.feed_keys(key, "n", false)
end)
map("n", "<F11>", ":TagbarToggle<CR>")

-- Telescope

map("n", "<leader>fb", function()
	-- require("telescope").extensions.file_browser.file_browser()
end, { desc = "Browse files" })
map("n", "<leader>ft", function()
	require("telescope.builtin").buffers()
end, { desc = "List buffers" })
map("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end, { desc = "Find files" })
map("n", "<leader>fg", function()
	require("telescope.builtin").grep_string()
end, { desc = "Grep string" })

map("n", "<leader>gs", function()
	require("telescope.builtin").git_status()
end, { desc = "Git status" })
map("n", "<leader>gc", function()
	require("telescope.builtin").git_commits()
end, { desc = "Git commits" })
map("n", "<leader>gb", function()
	require("telescope.builtin").git_branches()
end, { desc = "Git branches" })
map("n", "<leader>gf", function()
	require("telescope.builtin").git_files()
end, { desc = "Git files" })

-- Lazy

map("n", "<leader>ls", ":Lazy show<CR>", { desc = "Show" })
map("n", "<leader>lc", ":Lazy clean<CR>", { desc = "Clean" })
