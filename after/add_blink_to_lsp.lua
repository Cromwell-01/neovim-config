local capabilities = require('blink.cmp').get_lsp_capabilities()
local config = require('lspconfig')

vim.lsp.config("rust", {
    capabilities = capabilities
})

config['html'].setup({ capabilities = capabilities })
config['cssls'].setup({ capabilities = capabilities })
config['ts_ls'].setup({ capabilities = capabilities })
config['lua_ls'].setup({ capabilities = capabilities })
