return {
	{
		"ollykel/v-vim",
		lazy = false,
	},
	{
		"wfxr/minimap.vim",
		build = "cargo install --locked code-minimap",
		-- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
		config = function()
			vim.cmd("let g:minimap_width = 10")
			vim.cmd("let g:minimap_auto_start = 1")
			vim.cmd("let g:minimap_auto_start_win_enter = 1")
		end,
	},
	"folke/zen-mode.nvim",
	"folke/twilight.nvim",
	{
		"lukas-reineke/headlines.nvim",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = true, -- or `opts = {}`
	},
	{
		"karb94/neoscroll.nvim",
		event = "WinScrolled",
		config = function()
			require("neoscroll").setup({
				-- All these keys will be mapped to their corresponding default scrolling animation
				mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
				hide_cursor = true, -- Hide cursor while scrolling
				stop_eof = true, -- Stop at <EOF> when scrolling downwards
				use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
				respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
				cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
				easing_function = nil, -- Default easing function
				pre_hook = nil, -- Function to run before the scrolling animation starts
				post_hook = nil, -- Function to run after the scrolling animation ends
			})
		end,
	},
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
		config = function()
			require("he.plugins.config.neorg")
		end,
	},
	-- {
	-- 	"lambdalisue/fern.vim",
	-- 	lazy = false,
	-- },
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("he.plugins.config.lualine")
		end,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "folke/tokyonight.nvim", lazy = false },
	{ "ron-rs/ron.vim", lazy = false },
	-- { "https://github.com/beyondmarc/hlsl.vim.git", lazy = false },
	{ "DingDean/wgsl.vim", lazy = false },
	-- { "drzel/quakec.vim", lazy = false },
	{
		"preservim/vim-markdown",
		requires = { "godlygeek/tabular" },
		ft = "markdown",
	},
	{ "mbbill/undotree", lazy = false },
	{
		"olexsmir/gopher.nvim",
		dependencies = { -- dependencies
			"mfussenegger/nvim-dap",
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("gopher").setup({
				commands = {
					go = "go",
					gomodifytags = "gomodifytags",
					gotests = "gotests", -- also you can set custom command path
					impl = "impl",
					iferr = "iferr",
				},
			})
		end,
		ft = { "go" },
	},
	{
		"preservim/tagbar",
		lazy = false,
	},
	-- {
	-- 	"jcdickinson/codeium.nvim",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"hrsh7th/nvim-cmp",
	-- 	},
	-- 	config = function()
	-- 		require("codeium").setup({})
	-- 	end,
	-- },
	-- {
	-- 	"jackMort/ChatGPT.nvim",
	-- 	event = "VeryLazy",
	-- 	config = function()
	-- 		require("chatgpt").setup({
	-- 			api_key_cmd = "pass show chatgpt.nvim",
	-- 		})
	-- 	end,
	-- 	dependencies = {
	-- 		"MunifTanjim/nui.nvim",
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-telescope/telescope.nvim",
	-- 	},
	-- },
	{
		"uga-rosa/ccc.nvim",
		config = function()
			require("ccc").setup({})
		end,
	},
	{
		"anuvyklack/pretty-fold.nvim",
		config = function()
			require("pretty-fold").setup({ fill_char = "" })
		end,
	},

	-- {
	-- 	"vimwiki/vimwiki",
	-- 	lazy = false,
	-- 	config = function()
	-- 		require("he.plugins.config.vimwiki")
	-- 	end,
	-- },
	-- {
	-- 	"nvim-orgmode/orgmode",
	-- 	dependencies = {
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 		{
	-- 			"akinsho/org-bullets.nvim",
	-- 		},
	-- 	},
	-- 	config = function()
	-- 		require("he.plugins.config.orgmode")
	-- 	end,
	-- 	lazy = false,
	-- },
	-- Utilities
	{
		"stevearc/oil.nvim",
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("he.plugins.config.oil")
		end,
	},
	{
		"rcarriga/nvim-notify",
		config = function()
			require("he.plugins.config.notify")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		dependencies = "nvim-treesitter",
		config = function()
			require("he.plugins.config.indent")
		end,
	},
	{
		"ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings()
		end,
		lazy = false,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("he.plugins.config.treesitter")
		end,
		lazy = false,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                              , branch = '0.1.1',
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
			},
		},
		config = function()
			require("he.plugins.config.telescope")
		end,
		cmd = "Telescope",
	},
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup()
		end,
		lazy = false,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
		keys = {
			"gcc",
			"gbc",
			{ "gc", mode = "v" },
			{ "gb", mode = "v" },
		},
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
		lazy = false,
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.theta").config)
		end,
		lazy = false,
	},
	-- {
	-- 	"glepnir/dashboard-nvim",
	-- 	event = "VimEnter",
	-- },
	-- Git
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("he.plugins.config.gitsigns")
		end,
	},
	{ "tpope/vim-fugitive", cmd = "Git" },
	-- Themes
	-- {
	-- 	"navarasu/onedark.nvim",
	-- 	config = function()
	-- 		require("he.plugins.config.onedark")
	-- 		-- require("onedark").setup({
	-- 		-- 	transparent = true,
	-- 		-- })
	-- 		-- vim.cmd([[
	-- 		--          colorscheme onedark
	-- 		--          ]])
	-- 	end,
	-- 	enabled = false,
	-- },
	-- {
	-- 	"JoosepAlviste/palenightfall.nvim",
	-- 	config = function()
	-- 		require("he.plugins.config.colors")
	-- 	end,
	-- 	enabled = false,
	-- },
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- },
	-- Haskell
	-- {
	-- 	"mrcjkb/haskell-tools.nvim",
	-- 	requires = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-telescope/telescope.nvim", -- optional
	-- 	},
	-- 	-- branch = "1.x.x", -- recommended
	-- 	ft = "haskell",
	-- },
	-- Rust
	{
		"simrat39/rust-tools.nvim",
		ft = "rust",
		config = function()
			require("he.plugins.config.rust-tools")
		end,
	},
	{
		"rust-lang/rust.vim",
		ft = "rust",
	},
	{
		"saecki/crates.nvim",
		ft = { "rust", "toml" },
		config = function(_, opts)
			local crates = require("crates")
			crates.setup(opts)
			crates.show()
		end,
	},
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
		},
		config = function()
			require("he.plugins.config.dap")
		end,
		ft = { "rust", "go" },
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		ft = { "go", "rust", "lua" },
		opts = function()
			return require("he.plugins.config.null-ls")
		end,
	},
	-- LSP Support
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		config = function()
			require("he.plugins.config.lsp")
		end,
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{
				-- Optional
				"williamboman/mason.nvim",
				build = ":MasonUpdate",
				dependencies = { { "williamboman/mason-lspconfig.nvim" } },
			},

			-- Autocompletion
			{
				"hrsh7th/nvim-cmp",
				dependencies = {
					{ "hrsh7th/cmp-nvim-lsp" }, -- Required
					{ "hrsh7th/cmp-buffer" },
					{ "hrsh7th/cmp-path" },
				},
			}, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "j-hui/fidget.nvim" },
		},
	},
	-- {
	-- 	"freddiehaddad/feline.nvim",
	-- 	config = function()
	-- 		require("he.plugins.config.feline")
	-- 	end,
	-- 	lazy = false,
	-- 	disabled = true,
	-- },
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				position = "right",
			})
			vim.keymap.set("n", "<leader>t", ":TroubleToggle<CR>")
		end,
		lazy = false,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup()
		end,
		lazy = false,
	},
	-- TODO
}
