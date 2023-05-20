local ok, indent_blankline = pcall(require, "indent_blankline")
if not ok then
	return
end

-- vim.opt.list = false
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
-- vim.opt.listchars:append("tabulator:↴")

vim.cmd([[highlight IndentBlanklineChar guifg=#353535 gui=nocombine]])

indent_blankline.setup({
	char = "▏",
	filetype_exclude = {
		"help",
		"terminal",
		"packer",
		"lspinfo",
		"TelescopePrompt",
		"TelescopeResults",
		"alpha",
	},
	buftype_exclude = { "terminal", "oil" },
	show_trailing_blankline_indent = false,
	show_first_indent_level = false,
	space_char_blankline = " ",
	use_treesitter = true,
})
