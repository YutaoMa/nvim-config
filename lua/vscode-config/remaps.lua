vim.keymap.set({'n', 'x'}, '<Space>', '<Nop>')
vim.g.mapleader = ' '

-- Use VSCode fold
vim.keymap.set('n', 'za', function()
    vim.fn.VSCodeNotify('editor.toggleFold')
end)
vim.keymap.set('n', 'zM', function()
    vim.fn.VSCodeNotify('editor.foldAll')
end)
vim.keymap.set('n', 'zR', function()
    vim.fn.VSCodeNotify('editor.unfoldAll')
end)

-- Cut to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '\"+y')
vim.keymap.set('n', '<leader>Y', '\"+Y')

-- Blackhole the deleted text
vim.keymap.set('x', '<leader>p', '\"_dP')
vim.keymap.set({'n', 'v'}, '<leader>d', '\"_d')

-- VSCode window navigation
vim.keymap.set({'n', 'x'}, '<C-j>', function()
    vim.fn.VSCodeNotify('workbench.action.navigateDown')
end)
vim.keymap.set({'n', 'x'}, '<C-k>', function()
    vim.fn.VSCodeNotify('workbench.action.navigateUp')
end)
vim.keymap.set({'n', 'x'}, '<C-h>', function()
    vim.fn.VSCodeNotify('workbench.action.navigateLeft')
end)
vim.keymap.set({'n', 'x'}, '<C-l>', function()
    vim.fn.VSCodeNotify('workbench.action.navigateRight')
end)

-- Move cursor during insert mode
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-l>', '<Right>')
