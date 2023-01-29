if vim.g.vscode then
    -- VSCode extension
    require('vscode-config')
else
    -- Ordinary Neovim
    require('neovim-config')
end
