if vim.g.vscode then
    -- VSCode extension
else
    -- Ordinary Neovim

    -- catppuccin/nvim
    require('catppuccin').setup({
        flavour = 'mocha',
        transparent_background = true,
        integrations = {
            leap = true,
            mason = true,
            cmp = true,
            native_lsp = {
                enabled = true
            },
            nvimtree = true,
            treesitter = true,
            telescope = true,
            gitsigns = true
        }
    })

    vim.cmd.colorscheme 'catppuccin'

    -- nvim-tree/nvim-web-devicons
    require'nvim-web-devicons'.setup({
        default = true
    })

    -- feline-nvim/feline.nvim
    local ctp_feline = require('catppuccin.groups.integrations.feline')

    require('feline').setup({
        components = ctp_feline.get()
    })

    -- tpope/vim-fugitive
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

    -- lewis6991/gitsigns.nvim
    require('gitsigns').setup({
        current_line_blame = true
    })

    -- ggandor/leap.nvim
    require('leap').add_default_mappings()

    -- VonHeikemen/lsp-zero.nvim 
    local lsp = require('lsp-zero')

    lsp.preset('recommended')

    lsp.set_server_config({
        capabilities = {
            textDocument = {
                foldingRange = {
                    dynamicRegistration = false,
                    lineFoldingOnly = true
                }
            }
        }
    })

    lsp.configure('sumneko_lua', {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim' }
                }
            }
        }
    })

    lsp.setup()

    -- nvim-telescope/telescope.nvim
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
    vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})

    -- nvim-tree/nvim-tree.lua
    require('nvim-tree').setup()

    vim.keymap.set('n', '<leader>tt', vim.cmd.NvimTreeToggle)

    -- nvim-treesitter/nvim-treesitter
    require'nvim-treesitter.configs'.setup {
        ensure_installed = { 'lua', 'rust', 'javascript', 'typescript' },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        }
    }

    -- kevinhwang91/nvim-ufo
    vim.opt.foldcolumn = '1'
    vim.opt.foldlevel = 99
    vim.opt.foldlevelstart = 99
    vim.opt.foldenable = true

    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

    require('ufo').setup()

    -- mbbill/undotree
    vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)
end

