
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Git
    use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    -- Themes
    use({
        'rose-pine/neovim',
        as = 'rose-pine'
    })
    use { "ellisonleao/gruvbox.nvim" }
    use "EdenEast/nightfox.nvim"
    -- Syntax
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'p00f/nvim-ts-rainbow'
    use 'ron-rs/ron.vim'
    use {
        'LhKipp/nvim-nu',
        run = ':TSInstall nu',
        config = function ()
            require'nu'.setup{}
        end
    }
    use 'rust-lang/rust.vim'
    use 'aspeddro/slides.nvim'
    -- Usefull plugins
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    use 'nanozuki/tabby.nvim'
    --use {
    --    "utilyre/barbecue.nvim",
    --    tag = "*",
    --    requires = {
    --        "SmiteshP/nvim-navic",
    --        "nvim-tree/nvim-web-devicons",
    --    }
    --}
    --use {
    --    "folke/noice.nvim",
    --    requires = {
    --        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    --        "MunifTanjim/nui.nvim",
    --        -- OPTIONAL:
    --        --   `nvim-notify` is only needed, if you want to use the notification view.
    --        --   If not available, we use `mini` as the fallback
    --        "rcarriga/nvim-notify",
    --    }
    --}
    --use {
        --    'kdheepak/tabline.nvim',
        --    config = function()
            --        require'tabline'.setup {enable = false }
            --    end,
            --    requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
            --}
            use 'preservim/tagbar'
            use {
                'feline-nvim/feline.nvim',
                requires = {
                    "nvim-tree/nvim-web-devicons",
                },
            }
            --use {
                --    'nvim-lualine/lualine.nvim',
                --    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
                --}

                --use('nvim-treesitter/playground')
                use {"akinsho/toggleterm.nvim", tag = '*',}
                use 'karb94/neoscroll.nvim'
                use "windwp/nvim-autopairs"

                use('theprimeagen/harpoon')
                use 'sidebar-nvim/sidebar.nvim'
                use {
                    "amrbashir/nvim-docs-view",
                    cmd = { "DocsViewToggle" },
                    config = function ()
                        require('docs-view').setup {
                            position = "right",
                            width = 35,
                        }
                    end
                }
                -- Lsp config plugins
                use {
                    'VonHeikemen/lsp-zero.nvim',
                    requires = {
                        -- LSP Support
                        {'neovim/nvim-lspconfig'},             -- Required
                        {'williamboman/mason.nvim'},           -- Optional
                        {'williamboman/mason-lspconfig.nvim'}, -- Optional

                        -- Autocompletion
                        {'hrsh7th/nvim-cmp'},         -- Required
                        {'hrsh7th/cmp-nvim-lsp'},     -- Required
                        {'hrsh7th/cmp-buffer'},       -- Optional
                        {'hrsh7th/cmp-path'},         -- Optional
                        {'tzachar/cmp-tabnine', run='./install.sh'}, -- Tabnine
                        {'saadparwaiz1/cmp_luasnip'}, -- Optional
                        {'hrsh7th/cmp-nvim-lua'},     -- Optional

                        -- Snippets
                        {'L3MON4D3/LuaSnip'},             -- Required
                        {'rafamadriz/friendly-snippets'}, -- Optional
                    }
                }
            end)
