vim.g.mapleader = ' '

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor after C-d' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor after C-u' })

vim.keymap.set('x', '<leader>p', '\"_dP', { desc = 'Blackhole selected text when pasting' })
vim.keymap.set({'n', 'v'}, '<leader>y', '\"+y', { desc = 'Copy to system clipboard' })
vim.keymap.set('n', '<leader>Y', '\"+Y', { desc = 'Copy line to system clipboard' })
vim.keymap.set({'n', 'v'}, '<leader>d', '\"_d', { desc = 'Blackhole when deleting' })

vim.keymap.set('n', ']b', vim.cmd.BufferNext, { desc = 'Next buffer' })
vim.keymap.set('n', '[b', vim.cmd.BufferPrevious, { desc = 'Previous buffer' })

-- Mimic VSCode command palette
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<F1>', builtin.builtin, { desc = 'Telescope all builtin pickers' })
