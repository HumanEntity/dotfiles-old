
vim.api.nvim_create_autocmd(
    "BufWritePre",
    {
        pattern = "*.rs",
        command = "RustFmt",
    }
)
