
local opt = vim.opt

vim.cmd("highlight Comment cterm=italic")

vim.g.mapleader = " "

opt.showtabline = 2

-- vim.opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
opt.undofile = true

opt.ignorecase = true
smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.wrap = true
opt.splitright = true
opt.splitbelow = true

opt.cursorcolumn = false
opt.cursorline = true

opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

--vim.opt.clipboard:append("unnamedplus")

-- Hello, world

vim.opt.iskeyword:append("-")
