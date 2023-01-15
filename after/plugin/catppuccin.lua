require('catppuccin').setup({
    flavour = 'macchiato',
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

