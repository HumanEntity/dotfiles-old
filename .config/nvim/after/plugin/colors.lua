require('gruvbox').setup({
    disable_background = true
})
require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color)
	color = color or 'rose-pine'
	vim.cmd.colorscheme(color)
    vim.cmd('set background=dark')
    vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
    vim.cmd('set termguicolors')

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

ColorMyPencils()
