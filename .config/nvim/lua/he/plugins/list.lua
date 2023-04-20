
return {
    --{'wbthomason/packer.nvim'}
    {
        'glacambre/firenvim',

        -- Lazy load firenvim
        -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
        cond = not not vim.g.started_by_firenvim,
        build = function()
            require("lazy").load({ plugins = "firenvim", wait = true })
            vim.fn["firenvim#install"](0)
        end
    },
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup()
        end,
        lazy = false,
        priority = 1000,
    },
    -- Fuzzy Finder
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.0',
        dependencies = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require("he.plugins.config.telescope")
        end,
        cmd = "Telescope",
    },
    -- Git
    {
        'tpope/vim-fugitive',
        cmd = "Git",
    },
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require("he.plugins.config.gitsigns")
        end,
        cmd = "Gitsigns"
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    },

    -- Themes
    { "ellisonleao/gruvbox.nvim" },
    { "sainnhe/gruvbox-material" },
    { "EdenEast/nightfox.nvim" },
    -- Syntax
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            { 'p00f/nvim-ts-rainbow' },
        },
        lazy = false,
        config = function()
            require("he.plugins.config.treesitter")
        end,
    },
    -- Organization
    -- {
    --     "nvim-orgmode/orgmode",
    --     ft = {"org"},
    --     config = function ()
    --         local org = require("orgmode");
    --         org.setup_ts_grammar()
    --         org.setup()
    --     end
    -- },
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        opts = {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.norg.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes",
                        },
                    },
                },
            },
        },
        dependencies = { { "nvim-lua/plenary.nvim" } },
        cmd = "Neorg"
    },
    -- NO Distraction
    {
        "folke/zen-mode.nvim",
        config = function ()
            require("zen-mode").setup()
        end,
        dependencies = {
            "folke/twilight.nvim"
        },
        lazy = false,
    },
    -- Usefull plugins
    {
        'numToStr/Comment.nvim',
        dependencies = {'JoosepAlviste/nvim-ts-context-commentstring'},
        config = function()
            require('Comment').setup()
        end,
        keys = {
            {"gcc"},
            {"gbc"},
            {"gc", mode = "v"},
            {"gb", mode = "v"},
        }
    },
    {
        'aserowy/tmux.nvim',
        config = function()
            require("he.plugins.config.tmux")
        end,
        lazy = false,
    },
    { 'preservim/tagbar' },
    {
        'nanozuki/tabby.nvim',
        lazy = false,
        config = function()
            require("he.plugins.config.tabby")
        end
    },
    {
        'feline-nvim/feline.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        config = function()
            require("he.plugins.config.feline")
        end
    },
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("he.plugins.config.toggleterm")
        end
    },
    -- use 'karb94/neoscroll.nvim'
    {
        "windwp/nvim-autopairs",
        config = function()
            require("he.plugins.config.autopairs")
        end,
        lazy = false,
    },
    {
        "amrbashir/nvim-docs-view",
        cmd = { "DocsViewToggle" },
        config = function ()
            require('docs-view').setup {
                position = "right",
                width = 35,
            }
        end
    },
    -- Lsp config plugins
    {
        "folke/trouble.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function ()
            require("trouble").setup()
        end,
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'onsails/lspkind.nvim'},
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            -- {'tzachar/cmp-tabnine', run='./install.sh'}, -- Tabnine
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional
            {
                'saecki/crates.nvim',
                tag = 'v0.3.0',
                dependencies = { 'nvim-lua/plenary.nvim' },
                config = function()
                    require('crates').setup()
                end,
                lazy = false,
            },

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        },
        lazy = false,
        priority = 10,
        config = function()
            require("he.plugins.config.lsp")
        end
    }
}
