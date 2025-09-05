vim.api.nvim_create_autocmd('LspAttach', {
    pattern = "*.rs",
    callback = function(args)
        local buf = args.buf;
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if client.name == "rust-analyzer" then
            vim.keymap.set(
                "n",
                "<leader>st",
                function()
                    vim.cmd.RustLsp { 'hover', 'actions' }
                end,
                { buffer = buf }
            )

            vim.keymap.set(
                "n",
                "<leader>sm",
                function()
                    vim.cmd.RustLsp('expandMacro')
                end,
                { buffer = buf }
            )

            vim.keymap.set(
                "n",
                "<leader><Up>",
                function()
                    vim.cmd.RustLsp({ "moveItem", "up" })
                end,
                { buffer = buf }
            )

            vim.keymap.set(
                "n",
                "<leader><Down>",
                function()
                    vim.cmd.RustLsp({ "moveItem", "down" })
                end,
                { buffer = buf }
            )

            vim.keymap.set(
                "n",
                "<leader>see",
                function()
                    vim.cmd.RustLsp('explainError')
                end,
                { buffer = buf }
            )

            vim.keymap.set(
                "n",
                "<leader>se",
                function()
                    vim.cmd.RustLsp('renderDiagnostic')
                end,
                { buffer = buf }
            )
        end
    end
})

vim.lsp.config("rust_analyzer", {
    cmd = { "rustup", "run", "stable", "rust-analyzer" },
    settings = {
        ["rust-analyzer"] = {
            check = {
                enable = true,
                command = "clippy",
                features = "all",
                experimental = true,
            },
            checkOnSave = {
                command = "clippy",
            },
            diagnostics = {
                enable = true,
                experimental = true,
            },
            cargo = {
                allFeatures = true,
            },
            procMacro = {
                enable = true,
            },
            lens = {
                enable = true,
            },
            inlayHints = {
                enable = true,
            },
            experimental = {
                serverStatusNotification = true,
            },
        },
    },
})
