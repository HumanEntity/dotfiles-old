require("orgmode").setup_ts_grammar()

require("nvim-treesitter.configs").setup({
	ensure_installed = { "rust", "c", "vim", "markdown", "org" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { "org" },
	},
})
