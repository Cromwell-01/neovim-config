return {
    cmd = { "rustup", "run", "stable", "rust-analyzer" },
    filetypes = { "rust" },
    root_markers = { "Cargo.toml" },
    settings = {
        ["rust-analyzer"] = {
            check = {
                enable = true,
                command = "clippy",
                features = "all",
                experimental = true,
            },
            checkOnSave = true,
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
}
