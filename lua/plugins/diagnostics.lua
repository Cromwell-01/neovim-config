return {
    "rachartier/tiny-inline-diagnostic.nvim",
    priority = 1000,
    preset = "powerline",
    config = function()
        local tiny = require('tiny-inline-diagnostic')

        tiny.setup()

        vim.diagnostic.config({ virtual_text = false }) -- Disable default virtual text
    end
}
