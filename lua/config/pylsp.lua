-- This disables pycodestyle
require'lspconfig'.pylsp.setup{
    capabilities = capabilities,
    settings = {
        pylsp = {
            plugins = {
                jedi_completion = { include_params = true }, pycodestyle = { enabled = false },
            },
        },
    },
}
