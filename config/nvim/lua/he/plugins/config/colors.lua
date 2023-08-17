-- require("kanagawa").setup({
-- 	compile = false, -- enable compiling the colorscheme
-- 	undercurl = false, -- enable undercurls
-- 	commentStyle = { italic = true },
-- 	functionStyle = {},
-- 	keywordStyle = { italic = true },
-- 	statementStyle = { bold = true },
-- 	typeStyle = {},
-- 	transparent = true, -- do not set background color
-- 	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
-- 	terminalColors = true, -- define vim.g.terminal_color_{0,17}
-- 	colors = {
-- 		-- add/modify theme and palette colors
-- 		palette = {},
-- 		theme = {
-- 			wave = {},
-- 			lotus = {},
-- 			dragon = {},
-- 			all = {
-- 				ui = {
-- 					bg_gutter = "none",
-- 				},
-- 			},
-- 		},
-- 	},
-- 	overrides = function(colors) -- add/modify highlights
-- 		return {}
-- 	end,
-- 	theme = "wave", -- Load "wave" theme when 'background' option is not set
-- 	background = {
-- 		-- map the value of 'background' option to a theme
-- 		dark = "wave", -- try "dragon" !
-- 		light = "lotus",
-- 	},
-- })

-- require("everblush").setup({
--
-- 	-- -- Default options
-- 	-- override = {},
-- 	-- transparent_background = false,
-- 	-- nvim_tree = {
-- 	-- 	contrast = false,
-- 	-- },
--
-- 	-- Configuration examples
--
-- 	-- Override the default highlights using Everblush or other colors
-- 	-- override = {
-- 	-- 	Normal = { fg = "#ffffff", bg = "comment" },
-- 	-- },
-- 	override = {
-- 		Folded = { bg = nil },
-- 	},
--
-- 	-- Set transparent background
-- 	transparent_background = true,
--
-- 	-- Set contrast for nvim-tree highlights
-- 	nvim_tree = {
-- 		contrast = true,
-- 	},
-- })

require("tokyonight").setup({
	style = "night",
	transparent = true,
})

-- setup must be called before loading
if vim.g.custom_scheme == true then
	vim.cmd("colorscheme vibrant")
else
	-- vim.cmd("colorscheme everblush")
	vim.cmd("colorscheme tokyonight")
	vim.cmd("hi Folded guibg=NONE")
end
-- require("kanagawa").load("wave")
