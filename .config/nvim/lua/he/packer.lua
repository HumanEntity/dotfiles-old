
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'tpope/vim-fugitive'
    use({
        'rose-pine/neovim',
        as = 'rose-pine'
    })
    use { "ellisonleao/gruvbox.nvim" }
    use 'ron-rs/ron.vim'
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }
    --use {
        --    'nvim-tree/nvim-tree.lua',
        --    requires = {
            --        'nvim-tree/nvim-web-devicons', -- optional, for file icons
            --    },
            --}
            --use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
            use 'rust-lang/rust.vim'
            use {
                'kdheepak/tabline.nvim',
                config = function()
                    require'tabline'.setup {enable = false }
                end,
                requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
            }
            use 'preservim/tagbar'
            use {
                'nvim-lualine/lualine.nvim',
                requires = { 'nvim-tree/nvim-web-devicons', opt = true }
            }

            use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
            --use('nvim-treesitter/playground')
            use('theprimeagen/harpoon')

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
                    {'saadparwaiz1/cmp_luasnip'}, -- Optional
                    {'hrsh7th/cmp-nvim-lua'},     -- Optional

                    -- Snippets
                    {'L3MON4D3/LuaSnip'},             -- Required
                    {'rafamadriz/friendly-snippets'}, -- Optional
                }
            }
        end)
