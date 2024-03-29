vim.g.mapleader = " "
-- vim.g.tagbar_autofocus = 1
vim.g.vim_markdown_conceal = 2
vim.g.tagbar_position = "right"

local custom_fold_text = function()
	local lines = vim.api.nvim_buf_get_lines(0, vim.v.foldstart, vim.v.foldend, true)
	print(lines[0])
	return lines[0]
end

vim.wo.foldlevel = 2
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.wo.foldtext = "" -- custom_fold_text()

-- vim.cmd([[
-- " setlocal foldmethod=syntax
-- " set nofoldenable
-- " set foldlevel=99
-- " set fillchars=fold:\ "The backslash escapes a space
-- " set foldtext=CustomFoldText()
--
-- " function! CustomFoldText()
-- "   let indentation = indent(v:foldstart - 1)
-- "   let foldSize = 1 + v:foldend - v:foldstart
-- "   let foldSizeStr = " " . foldSize . " lines "
-- "   let foldLevelStr = repeat("+--", v:foldlevel)
-- "   let expansionString = repeat(" ", indentation)
-- "
-- "   return expansionString . foldLevelStr . foldSizeStr
-- " endfunction
-- ]])

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-- vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = true
-- vim.opt.textwidth = 0
-- vim.opt.wrapmargin = 0

vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
