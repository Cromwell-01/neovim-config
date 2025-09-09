return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable({
            "lua",
            "rust",
            "html",
            --          "htmx",
            "biome",
            "ts_ls",
            "cssls",
            "eslint",
            "yamlls",
            --           "hyprls",
            "tailwindcss",
            "gitlab_ci_ls",
            "postgres_lsp",
            --            "docker_language_server",
            "docker_compose_language_service"
        })

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function()
                vim.keymap.set(
                    "n",
                    "<leader>st",
                    vim.lsp.buf.hover
                )

                vim.keymap.set(
                    "n",
                    "<leader>sr",
                    vim.lsp.buf.references
                )

                vim.keymap.set(
                    "n",
                    "<leader>si",
                    vim.lsp.buf.implementation
                )

                vim.keymap.set(
                    "n",
                    "<leader>sd",
                    vim.lsp.buf.type_definition
                )

                vim.keymap.set(
                    "n",
                    "<leader>f",
                    vim.lsp.buf.format
                )

                vim.keymap.set(
                    "n",
                    "<leader>r",
                    vim.lsp.buf.rename
                )
            end,
        })
    end
}
