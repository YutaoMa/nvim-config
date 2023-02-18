return {
    "neovim/nvim-lspconfig",
    opts = {
        autoformat = false,
        capabilities = {
            textDocument = {
                foldingRange = {
                    dynamicRegistration = false,
                    lineFoldingOnly = true
                }
            }
        }
    },
}
