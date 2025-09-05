return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons'
    },
    opts = {
        defaults = {
            layout_strategy = 'horizontal',
            layout_config = {
                width = 0.90,
                height = 0.95,
                preview_width = 0.6,
                prompt_position = "bottom",
            },
        },
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case",
            }
        }
    },
    config = function(_, opts)
        local telescope = require("telescope")

        telescope.setup(opts)

        local builtin = require("telescope.builtin")

        vim.keymap.set(
            "n",
            "ff",
            builtin.find_files
        )

        vim.keymap.set(
            "n",
            "fg",
            builtin.live_grep
        )

        vim.keymap.set(
            "n",
            "fb",
            builtin.buffers
        )

        vim.keymap.set(
            "n",
            "fh",
            builtin.help_tags
        )

        vim.keymap.set(
            "n",
            "gc",
            builtin.git_commits
        )

        vim.keymap.set(
            "n",
            "gb",
            builtin.git_branches
        )

        vim.keymap.set(
            "n",
            "gs",
            builtin.git_status
        )

        vim.keymap.set(
            "n",
            "gsh",
            builtin.git_stash
        )
    end
}
