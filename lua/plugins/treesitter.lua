return  {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    lazy = false, 
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "html", "rust", "lua" },
          auto_install = true,

    }
}

