require('gruvbox').setup({
    disable_background = true
})
require('rose-pine').setup({
    disable_background = true
})
require('nightfox').setup({
    options = {
        styles = {
            comments = "italic",
            keywords = "italic",
            types = "italic",
            variables = "NONE",
        },
        transparent = true,
    }
})

function ColorMyPencils(color)
	color = color or 'rose-pine'
	vim.cmd.colorscheme(color)
    vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
    vim.cmd('highlight Comment cterm=italic')

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

ColorMyPencils('nordfox')
