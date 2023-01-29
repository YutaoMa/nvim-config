vim.g.mapleader = ' '

-- Center cursor after C-d/C-u
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Blackhole
vim.keymap.set('x', '<leader>p', '\"_dP')
vim.keymap.set({'n', 'v'}, '<leader>y', '\"+y')
vim.keymap.set('n', '<leader>Y', '\"+Y')
vim.keymap.set({'n', 'v'}, '<leader>d', '\"_d')

-- Switch buffer with barbar
vim.keymap.set('n', ']b', vim.cmd.BufferNext)
vim.keymap.set('n', '[b', vim.cmd.BufferPrevious)

