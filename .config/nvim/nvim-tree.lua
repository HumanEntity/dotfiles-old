--vim.g.loaded_netrw = 1
--vim.g.loader_netrwPlugin = 1

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    filters = {
        dotfiles = false
    }
})
