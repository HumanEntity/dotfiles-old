--vim.g.loaded_netrw = 1
--vim.g.loader_netrwPlugin = 1
local status, nvim_tree = pcall(require,"nvim-tree")
if not status then
    return
end

nvim_tree.setup({
    sort_by = "case_sensitive",
    filters = {
        dotfiles = false
    }
})
