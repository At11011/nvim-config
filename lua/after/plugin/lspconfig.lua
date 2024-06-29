local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}
lspconfig.rust_analyzer.setup {}
lspconfig.cmake.setup {}
lspconfig.lua_ls.setup {}
lspconfig.clangd.setup {
    -- on_attach = function(client, bufnr)
    --     client.server_capabillities.signatureHelpProvider = false
    --     on_attach(client, bufnr)
    -- end,
    -- capabilities = capabilities,
}
