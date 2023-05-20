local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ require("he.plugins.list") }, { lazy = true })

require("he.plugins.config.colors")

-- require("he.plugins.custom.notes").setup({
--     note_dir = "~/notes"
-- })
-- require("he.plugins.custom.notes").create_default_mappings()
