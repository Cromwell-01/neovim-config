return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            icons_enabled = true
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { 'encoding', 'filetype', 'filesize' },
            lualine_y = { 'searchcount' },
            lualine_z = { 'location' }
        },
        extensions = {
            "fzf",
            "oil",
            "lazy",
            "fugitive"
        }
    }
}
