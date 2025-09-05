return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable({
            "lua",
            "html",
            "htmx",
            "biome",
            "ts_ls",
            "cssls",
            "eslint",
            "yamlls",
            "hyprls",
            "tailwindcss",
            "gitlab_ci_ls",
            "postgres_lsp",
            "docker_language_server",
            "docker_compose_language_service"
        })

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true

        vim.lsp.config('html', {
            capabilities = capabilities,
        })

        vim.lsp.config('cssls', {
            capabilities = capabilities,
        })

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(ev)
                local client = vim.lsp.get_client_by_id(ev.data.client_id)

                if client:supports_method('textDocument/completion') then
                    vim.opt.completeopt = {
                        'menu',
                        'menuone',
                        'noinsert',
                        'fuzzy',
                        'popup'
                    }
                    vim.lsp.completion.enable(
                        true,
                        client.id,
                        ev.buf,
                        { autotrigger = true }
                    )

                    vim.keymap.set(
                        "i",
                        "<C-Space>",
                        function()
                            vim.lsp.completion.get()
                        end
                    )
                end
            end
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
