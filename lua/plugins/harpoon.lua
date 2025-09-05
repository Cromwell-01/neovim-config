return {
    "ThePrimeagen/harpoon",
    config = function()
        local ui = require("harpoon.ui")
        local marker = require("harpoon.mark")

        vim.keymap.set(
            "n",
            "fa",
            marker.add_file
        )

        vim.keymap.set(
            "n",
            "fm",
            ui.toggle_quick_menu
        )

        vim.keymap.set(
            "n",
            "fn",
            ui.nav_next
        )

        vim.keymap.set(
            "n",
            "fp",
            ui.nav_prev
        )
    end
}
