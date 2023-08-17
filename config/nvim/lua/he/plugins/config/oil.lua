require("oil").setup({
	keymaps = {
		["-"] = "actions.close",
		["="] = "actions.parent",
	},
})

vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
