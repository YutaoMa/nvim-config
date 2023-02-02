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
        gitsigns = true,
        fidget = true,
        barbar = true
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
vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git status' })

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
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>ht', builtin.help_tags, { desc = 'Telescope help tokens' })

-- nvim-tree/nvim-tree.lua
require('nvim-tree').setup({
    renderer = {
        icons = {
            glyphs = {
                git = {
                    unstaged = 'U'
                }
            }
        }
    },
    diagnostics = {
        enable = true
    },
    filters = {
        custom = {
            '^.git$'
        }
    }
})

vim.keymap.set('n', '<leader>tt', vim.cmd.NvimTreeToggle, { desc = 'Nvim-Tree toggle' })

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

vim.keymap.set('n', 'zR', require('ufo').openAllFolds, { desc = 'Open all folds' })
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds, { desc = 'Close all folds' })

require('ufo').setup()

-- mbbill/undotree
vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)

-- j-hui/fidget.nvim
require('fidget').setup({
    window = {
        blend = 0
    }
})

-- romgrk/barbar.nvim
local nvim_tree_events = require('nvim-tree.events')
local bufferline_api = require('bufferline.api')

local function get_tree_size()
    return require'nvim-tree.view'.View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
    bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
    bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
    bufferline_api.set_offset(0)
end)
