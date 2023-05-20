return {
	{
		"vimwiki/vimwiki",
		lazy = false,
		config = function()
			require("he.plugins.config.vimwiki")
		end,
	},
	{
		"nvim-orgmode/orgmode",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			{
				"akinsho/org-bullets.nvim",
				config = function()
					require("org-bullets").setup()
				end,
			},
		},
		config = function()
			require("he.plugins.config.orgmode")
		end,
		lazy = false,
	},
	-- Utilities
	{
		"stevearc/oil.nvim",
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
		config = function()
			require("he.plugins.config.oil")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		lazy = false,
	},
	{
		"rcarriga/nvim-notify",
		lazy = false,
		config = function()
			require("he.plugins.config.notify")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		dependencies = "nvim-treesitter",
		lazy = false,
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
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
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
	-- Git
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
		config = function()
			require("he.plugins.config.gitsigns")
		end,
	},
	{ "tpope/vim-fugitive", cmd = "Git" },
	-- Themes
	{
		"navarasu/onedark.nvim",
		config = function()
			require("he.plugins.config.onedark")
			-- require("onedark").setup({
			-- 	transparent = true,
			-- })
			-- vim.cmd([[
			--          colorscheme onedark
			--          ]])
		end,
		enabled = false,
	},
	{
		"JoosepAlviste/palenightfall.nvim",
		config = function()
			require("he.plugins.config.colors")
		end,
		enabled = false,
	},
	{
		"rebelot/kanagawa.nvim",
	},
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
		},
		config = function()
			require("he.plugins.config.dap")
		end,
		ft = "rust",
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
		},
		lazy = false,
	},
	{
		"freddiehaddad/feline.nvim",
		config = function()
			require("he.plugins.config.statusline")
		end,
		lazy = false,
	},
}
