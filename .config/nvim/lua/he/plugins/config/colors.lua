require('gruvbox').setup({
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
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_better_performance = 1
    vim.g.gruvbox_material_foreground = "material"
    vim.g.gruvbox_material_show_eob = 0
    -- vim.g.gruvbox_material_transparent_background = 1
    -- vim.g.gruvbox_material_dim_inactive_windows = 1

	color = color or 'rose-pine'
	vim.cmd.colorscheme(color)
    -- vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
    vim.cmd('highlight Comment cterm=italic')

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

ColorMyPencils('gruvbox-material')
