return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }

    use {
        'catppuccin/nvim',
        as = 'catppuccin'
   }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' }
        }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            { 'nvim-tree/nvim-web-devicons' }
        }
    }

    use 'mbbill/undotree'

    use 'tpope/vim-fugitive'

    use 'ggandor/leap.nvim'

    use 'feline-nvim/feline.nvim'

    use 'nvim-tree/nvim-web-devicons'

    use 'lewis6991/gitsigns.nvim'

    use {
        'kevinhwang91/nvim-ufo',
        requires = 'kevinhwang91/promise-async'
    }

    use {
        'romgrk/barbar.nvim',
        wants = 'nvim-web-devicons'
    }
end)

