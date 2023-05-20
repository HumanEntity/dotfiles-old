local map = function(mode, lhs, rhs, opts)
	require("he.utils").map.set(mode, lhs, rhs, opts, { silent = true })
end

map("n", "<ESC>", function()
	vim.cmd("noh")
end)

-- Code Folding
map("n", "<TAB>", "za")
map("n", "<leader>zf", "zf%")

-- Telescope

map("n", "<leader>fb", function()
	require("telescope").extensions.file_browser.file_browser()
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
