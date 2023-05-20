local lsp = require("lsp-zero").preset({})

require("mason").setup()
require("mason-lspconfig").setup()

lsp.ensure_installed({
	"rust_analyzer",
	"gopls",
	"clangd",
	"lua_ls",
	"marksman",
})

-- (Optional) Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

-- Make sure you setup `cmp` after lsp-zero

lsp.on_attach(function(client, bufnr)
	-- local opts = { buffer = bufnr, remap = false }

	-- local map = function(mode, lhs, rhs, opts)
	-- 	local options = opts or {}
	-- 	options.buffer = bufnr
	-- 	options.remap = false
	-- 	vim.keymap.set(mode, lhs, rhs, opts)
	-- end

	local utils = require("he.utils")
	local map = function(mode, lhs, rhs, opts)
		utils.map.set(mode, lhs, rhs, opts, { buffer = bufnr, remap = false })
	end

	map("n", "gd", function()
		vim.lsp.buf.definition()
	end, { desc = "Goto definition" })
	map("n", "K", function()
		vim.lsp.buf.hover()
	end, { desc = "Hover info" })
	map("n", "<leader>vws", function()
		vim.lsp.buf.workspace_symbol()
	end, { desc = "Workspace symbol" })
	map("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, { desc = "diagnostic" })
	map("n", "[d", function()
		vim.diagnostic.goto_next()
	end, { desc = "Next diagnostic" })
	map("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, { desc = "Prev diagnostic" })
	map("n", "<leader>vca", function()
		vim.lsp.buf.code_action()
	end, { desc = "Code action" })
	map("n", "<leader>vrr", function()
		vim.lsp.buf.references()
	end, { desc = "References" })
	map("n", "<leader>vrn", function()
		vim.lsp.buf.rename()
	end, { desc = "Rename" })
	map("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, { desc = "Signature help" })
end)

lsp.setup()

require("he.plugins.config.cmp")
