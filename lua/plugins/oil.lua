return {
    "stevearc/oil.nvim",
    dependencies = {
        { "echasnovski/mini.icons", opts = {} },
        -- or { "nvim-tree/nvim-web-devicons" },
    },
    opts = {
        columns = {
            "icon",
            "size"
        },
        buf_options = {
            buflisted = false,
            bufhidden = "hide",
        },
        view_options = {
            show_hidden = true,
        },
    },
    keys = {
        {
            "<leader>pd",
            "<CMD>Oil<CR>",
            desc = "Open parent directory",
        },
    },
    lazy = false
}
