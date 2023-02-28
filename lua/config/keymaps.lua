-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set('x', '<leader>p', '\"_dP', { desc = 'Blackhole selected text when pasting' })
keymap.set('n', '<leader>c', '\"_c', { desc = 'Blackhole selected text when replacing' })
keymap.set('n', '<leader>C', '\"_C', { desc = 'Blackhole selected text when replacing line' })
keymap.set({'n', 'v'}, '<leader>y', '\"+y', { desc = 'Copy to system clipboard' })
keymap.set('n', '<leader>Y', '\"+Y', { desc = 'Copy line to system clipboard' })
keymap.set({'n', 'v'}, '<leader>d', '\"_d', { desc = 'Blackhole when deleting' })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<F1>', builtin.builtin, { desc = 'Telescope all builtin pickers' })
