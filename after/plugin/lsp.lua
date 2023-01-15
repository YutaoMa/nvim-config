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

lsp.setup()

