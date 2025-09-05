return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local comments = require("todo-comments")

        comments.setup()

        vim.keymap.set(
            "n",
            "tl",
            function()
                vim.cmd("TodoLocList")
            end
        )

        vim.keymap.set(
            "n",
            "tf",
            function()
                vim.cmd("TodoTelescope")
            end
        )
    end
}
